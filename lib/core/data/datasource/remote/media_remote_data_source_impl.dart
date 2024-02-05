import 'package:banx/core/data/datasource/remote/media_remote_data_source.dart';
import 'package:banx/core/data/model/empty_response_dto.dart';
import 'package:banx/core/networking/api_endpoints.dart';
import 'package:banx/core/networking/http_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MediaRemoteDataSource)
class MediaRemoteDataSourceImpl implements MediaRemoteDataSource {
  final HTTPClient apiService;

  MediaRemoteDataSourceImpl({required this.apiService});

  @override
  Future<void> uploadImage(
      String path, Function(int, int) onSendProgress) async {
    String fileName = path.split('/').last;
    FormData formData = FormData.fromMap({
      "file": await MultipartFile.fromFile(path, filename: fileName),
    });

    return await apiService.post(
      endpoint: ApiEndpoint.kyc(KYCEndpoint.IMAGE),
      data: formData,
      onSendProgress: onSendProgress,
      options: Options(
        headers: {
          "Content-Type": "multipart/form-data",
        },
      ),
      mapper: (item) {},
    );
  }

  @override
  Future<EmptyResponseDto> uploadVideo(
      String path, Function(int, int) onSendProgress) async {
    String fileName = path.split('/').last;
    FormData formData = FormData.fromMap({
      "video": await MultipartFile.fromFile(path, filename: fileName),
    });

    return await apiService.post(
      endpoint: ApiEndpoint.kyc(KYCEndpoint.VIDEO),
      data: formData,
      options: Options(
        headers: {
          "Content-Type": "multipart/form-data",
        },
      ),
      onSendProgress: onSendProgress,
      mapper: (_) {
        return EmptyResponseDto.empty();
      },
    );
  }
}
