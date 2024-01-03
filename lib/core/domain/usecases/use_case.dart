import '../entities/entity.dart';
import '../entity_wrapper.dart';

abstract class UseCase<T extends Entity> {
  Future<EntityWrapper<T>> invoke();
}
