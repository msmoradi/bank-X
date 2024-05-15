import 'package:banx/core/data/datasource/remote/passkey_remote_data_source.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_assertion_options_request_dto.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_assertion_result_request_dto.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_attestation_options_request_dto.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_attestation_request_dto.dart';
import 'package:banx/core/data/model/response/webauthn/passkey_assertion_options_response_dto.dart';
import 'package:banx/core/data/model/response/webauthn/passkey_assertion_result_response_dto.dart';
import 'package:banx/core/data/model/response/webauthn/passkey_attestation_options_response_dto.dart';
import 'package:banx/core/data/model/response/webauthn/passkey_attestation_response_dto.dart';
import 'package:banx/core/networking/api_endpoints.dart';
import 'package:banx/core/networking/http_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PasskeyRemoteDataSource)
class PasskeyRemoteDataSourceImpl implements PasskeyRemoteDataSource {
  final HTTPClient apiService;

  PasskeyRemoteDataSourceImpl({required this.apiService});

  @override
  Future<PasskeyAttestationResponseDTO> sendPasskeyAttestation(
      PasskeyAttestationRequestDTO request) {
    return apiService.post(
      endpoint: ApiEndpoint.passkeys(PasskeysEndpoint.ATTESTATION_RESULT),
      data: request.toJson(),
      mapper: (response) {
        if (response != null) {
          return PasskeyAttestationResponseDTO.fromJson(response);
        }
        throw NotNullableError(
            'sendPasskeyAttestation response should not be null');
      },
    );
  }

  @override
  Future<PasskeyAttestationOptionsResponseDTO> getPasskeyAttestationOptions(
      PasskeyAttestationOptionsRequestDTO request) {
    return apiService.post(
      endpoint: ApiEndpoint.passkeys(PasskeysEndpoint.ATTESTATION_OPTIONS),
      data: request.toJson(),
      mapper: (response) {
        if (response != null) {
          return PasskeyAttestationOptionsResponseDTO.fromJson(response);
        }
        throw NotNullableError(
            'getPasskeyAttestationOptions response should not be null');
      },
    );
  }

  @override
  Future<PasskeyAssertionResultResponseDTO> sendPasskeyAssertionResult(
      PasskeyAssertionResultRequestDTO request) {
    return apiService.post(
      endpoint: ApiEndpoint.passkeys(PasskeysEndpoint.ASSERTION_RESULT),
      data: request.toJson(),
      mapper: (response) {
        if (response != null) {
          return PasskeyAssertionResultResponseDTO.fromJson(response);
        }
        throw NotNullableError(
            'sendPasskeyAssertionResult response should not be null');
      },
    );
  }

  @override
  Future<PasskeyAssertionOptionsResponseDTO> getPasskeyAssertionOptions(
      PasskeyAssertionOptionsRequestDTO request) async {
    return apiService.post(
      endpoint: ApiEndpoint.passkeys(PasskeysEndpoint.ASSERTION_OPTIONS),
      data: request.toJson(),
      mapper: (response) {
        if (response != null) {
          return PasskeyAssertionOptionsResponseDTO.fromJson(response);
        }
        throw NotNullableError(
            'getPasskeyAssertionOptions response should not be null');
      },
    );
  }
}
