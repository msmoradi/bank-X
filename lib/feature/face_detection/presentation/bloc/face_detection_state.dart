import 'package:freezed_annotation/freezed_annotation.dart';

part 'face_detection_state.freezed.dart';

enum FaceDetectionStatus { initial, failure, loading, kyc }

@freezed
class FaceDetectionState with _$FaceDetectionState {
  const factory FaceDetectionState({
    @Default(FaceDetectionStatus.initial) FaceDetectionStatus status,
    @Default('') String errorMessage,
    @Default(0) int progress,
  }) = _FaceDetectionState;
}
