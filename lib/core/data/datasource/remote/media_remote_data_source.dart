import 'package:banx/core/data/model/empty_response_dto.dart';

abstract class MediaRemoteDataSource {
  Future<void> uploadImage(String path, Function(int, int) onSendProgress);

  Future<EmptyResponseDto> uploadVideo(String path, Function(int, int) onSendProgress);
}
