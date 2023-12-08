library network_manager;

import 'package:banx/core/networking/typedefs.dart';
import 'package:dio/dio.dart';

abstract class HTTPClient {
  // Mapper is a function that convert JSON to the T model
  Future<T> get<T>({
    required String endpoint,
    JSON? queryParameters,
    required T Function(JSON responseBody) mapper,
  });

  Future<T> post<T>(
      {required String endpoint,
      Object? data,
      Options? options,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress,
      required T Function(Map<String, dynamic>? response) mapper});

  Future<T> put<T>(
      {required String endpoint,
      JSON? data,
      required T Function(Map<String, dynamic>? response) mapper});
}
