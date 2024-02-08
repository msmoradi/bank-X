import 'dart:async';
import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/domain/repository/media_repository.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:banx/feature/face_detection/presentation/bloc/face_detection_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';

part 'face_detection_event.dart';

@injectable
class FaceDetectionBloc extends Bloc<FaceDetectionEvent, FaceDetectionState> {
  final MediaRepository mediaRepository;
  final ProfileRepository profileRepository;

  FaceDetectionBloc(
    this.mediaRepository,
    this.profileRepository,
  ) : super(const FaceDetectionState()) {
    on<FaceDetectionSubmitted>(_onFaceDetectionSubmitted);
  }

  // Function to get the image path from assets
  Future<String> getImagePathFromAssets(String assetName) async {
    // Load image data from assets
    ByteData byteData = await rootBundle.load('assets/images/$assetName');

    // Get the temporary directory
    Directory tempDir = await getTemporaryDirectory();

    // Create a temporary file
    File tempFile = File('${tempDir.path}/$assetName');

    // Write the image data to the temporary file
    await tempFile.writeAsBytes(byteData.buffer.asUint8List());

    // Return the path of the temporary file
    return tempFile.path;
  }

  FutureOr<void> _onFaceDetectionSubmitted(
      FaceDetectionSubmitted event, Emitter<FaceDetectionState> emit) async {
    try {
      emit(state.copyWith(status: FaceDetectionStatus.loading));

      String imagePath = await getImagePathFromAssets('x1.png');

      final EntityWrapper<Entity> response = await mediaRepository.uploadVideo(
          path: imagePath,
          onSendProgress: (sent, total) {
            final progress = ((sent / total) * 100).toInt();
            emit(state.copyWith(progress: progress));
          });

      response.when(
        success: (entity) {
          emit(state.copyWith(status: FaceDetectionStatus.kyc));

          /*if (entity is UserProfileEntity) {
              emit(
                DeepLinkLanding(deeplink: entity.routingButtonEntity!.deeplink),
              );
            }*/
          /*emit(
              KycStatus(),
            );*/
        },
        partialSuccess: (message) => emit(
          state.copyWith(
            status: FaceDetectionStatus.failure,
            errorMessage: message,
          ),
        ),
        networkError: (exception) => emit(
          state.copyWith(
            status: FaceDetectionStatus.failure,
            errorMessage: exception.toString(),
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: FaceDetectionStatus.failure,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
