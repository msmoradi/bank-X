import 'package:banx/feature/face_detection/presentation/bloc/face_detection_bloc.dart';
import 'package:banx/feature/face_detection/presentation/bloc/face_detection_state.dart';
import 'package:banx/feature/face_detection/presentation/view/camera_v2_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class FaceDetectionPage extends StatelessWidget {
  final Function() onKycStatus;
  final Function(String) showMessage;

  const FaceDetectionPage({
    super.key,
    required this.onKycStatus,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance<FaceDetectionBloc>(),
      child: BlocConsumer<FaceDetectionBloc, FaceDetectionState>(
        listener: (context, state) {
          if (state.status == FaceDetectionStatus.failure) {
            showMessage(state.errorMessage);
          } else if (state.status == FaceDetectionStatus.kyc) {
            onKycStatus();
          }
        },
        builder: (context, state) {
          return FlutterCamera(
            loading: state.status == FaceDetectionStatus.loading,
            progress: state.progress,
            onVideoRecorded: (path) {
              context
                  .read<FaceDetectionBloc>()
                  .add(FaceDetectionSubmitted(path));
            },
          );
        },
      ),
    );
  }
}
