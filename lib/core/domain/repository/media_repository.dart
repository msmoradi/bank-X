import 'package:banx/core/domain/entities/empty_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';

abstract class MediaRepository {
  Future<EntityWrapper<EmptyEntity>> uploadImage({
    required String path,
    required Function(int, int) onSendProgress,
  });

  Future<EntityWrapper<EmptyEntity>> uploadVideo({
    required String path,
    required Function(int, int) onSendProgress,
  });
}
