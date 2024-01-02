
import 'package:banx/core/domain/entities/entity.dart';
import 'package:banx/core/networking/exceptions/network_exception.dart';

abstract class EntityWrapper<T extends Entity> {
  const EntityWrapper();

  static EntityWrapper<E> success<E extends Entity>(E data) =>
      SuccessEntityWrapper<E>(data);

  static EntityWrapper<E> partialSuccess<E extends Entity>(String message) =>
      PartialSuccessEntityWrapper<E>(message);

  static EntityWrapper<E> networkError<E extends Entity>(
          NetworkException exception) =>
      NetworkErrorEntityWrapper<E>(exception);

  bool get isSuccess => this is SuccessEntityWrapper<T>;

  void when({
    required void Function(T data) success,
    required void Function(String message) partialSuccess,
    required void Function(NetworkException exception) networkError,
  }) {
    if (isSuccess) {
      success.call((this as SuccessEntityWrapper<T>).data);
    } else if (this is PartialSuccessEntityWrapper<T>) {
      partialSuccess.call((this as PartialSuccessEntityWrapper<T>).message);
    } else if (this is NetworkErrorEntityWrapper<T>) {
      networkError.call((this as NetworkErrorEntityWrapper<T>).exception);
    }
  }
}

class SuccessEntityWrapper<E extends Entity> extends EntityWrapper<E> {
  final E data;

  const SuccessEntityWrapper(this.data);
}

class PartialSuccessEntityWrapper<E extends Entity> extends EntityWrapper<E> {
  final String message;

  const PartialSuccessEntityWrapper(this.message);
}

class NetworkErrorEntityWrapper<E extends Entity> extends EntityWrapper<E> {
  final NetworkException exception;

  const NetworkErrorEntityWrapper(this.exception);
}
