import 'package:banx/core/data/datasource/remote/media_remote_data_source.dart';
import 'package:banx/core/data/mapper/response.mapper.dart';
import 'package:banx/core/domain/entities/empty_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/domain/repository/media_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MediaRepository)
class MediaRepositoryImpl implements MediaRepository {
  final MediaRemoteDataSource mediaRemoteDataSource;

  MediaRepositoryImpl(this.mediaRemoteDataSource);

  @override
  Future<EntityWrapper<EmptyEntity>> uploadImage({
    required String path,
    required Function(int, int) onSendProgress,
  }) async {
    return await mediaRemoteDataSource
        .uploadImage(path, onSendProgress)
        .mapResponseToEntityWrapper(mapper: (model) {
      return EmptyEntity();
    });
  }

  @override
  Future<EntityWrapper<EmptyEntity>> uploadVideo({
    required String path,
    required Function(int, int) onSendProgress,
  }) async {
    return await mediaRemoteDataSource
        .uploadVideo(path, onSendProgress)
        .mapResponseToEntityWrapper(mapper: (model) {
      return EmptyEntity();
    });
  }
}
