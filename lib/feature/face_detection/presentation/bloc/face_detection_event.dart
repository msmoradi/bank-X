part of 'face_detection_bloc.dart';

abstract class FaceDetectionEvent extends Equatable {
  const FaceDetectionEvent();

  @override
  List<Object> get props => [];
}

class FaceDetectionSubmitted extends FaceDetectionEvent {
  final String path;

  const FaceDetectionSubmitted(this.path);

  @override
  List<Object> get props => [];
}

