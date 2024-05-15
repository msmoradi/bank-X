import 'package:banx/core/data/model/request/webauthn/passkey_assertion_options_request_dto.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_assertion_result_request_dto.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_attestation_options_request_dto.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_attestation_request_dto.dart';
import 'package:banx/core/data/model/response/webauthn/passkey_assertion_options_response_dto.dart';
import 'package:banx/core/data/model/response/webauthn/passkey_assertion_result_response_dto.dart';
import 'package:banx/core/data/model/response/webauthn/passkey_attestation_options_response_dto.dart';
import 'package:banx/core/data/model/response/webauthn/passkey_attestation_response_dto.dart';

abstract class PasskeyRemoteDataSource {
  Future<PasskeyAttestationResponseDTO> sendPasskeyAttestation(
      PasskeyAttestationRequestDTO request);

  Future<PasskeyAttestationOptionsResponseDTO> getPasskeyAttestationOptions(
      PasskeyAttestationOptionsRequestDTO request);

  Future<PasskeyAssertionResultResponseDTO> sendPasskeyAssertionResult(
      PasskeyAssertionResultRequestDTO request);

  Future<PasskeyAssertionOptionsResponseDTO> getPasskeyAssertionOptions(
      PasskeyAssertionOptionsRequestDTO request);
}
