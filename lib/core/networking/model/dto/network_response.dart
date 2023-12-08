import 'package:freezed_annotation/freezed_annotation.dart';
part 'network_response.freezed.dart';

@freezed
class NetworkResponse<T> with _$NetworkResponse {
  const factory NetworkResponse.ok(T data) = Ok;
  const factory NetworkResponse.error(String message) = Error;
  const factory NetworkResponse.loading(String message) = Loading;
}
