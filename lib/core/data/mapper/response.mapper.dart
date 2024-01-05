

import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/networking/exceptions/network_exception.dart';

extension ExtendedFuture<T> on Future<T> {
  Future<EntityWrapper<E>> mapResponseToEntityWrapper<E extends Entity>({
    required E Function(T response) mapper,
  }) {
    return then<EntityWrapper<E>>((value) {
      return EntityWrapper.success(mapper(value));
    }).catchError((error) {
      if (error is NetworkException) {
        return EntityWrapper.networkError<E>(error);
      } else {
        return EntityWrapper.networkError<E>(NetworkException('Unknown error'));
      }
    });
  }
}