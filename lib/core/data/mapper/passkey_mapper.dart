
import 'package:banx/core/data/model/response/webauthn/passkey_assertion_options_response_dto.dart';
import 'package:banx/core/data/model/response/webauthn/passkey_assertion_result_response_dto.dart';
import 'package:banx/core/data/model/response/webauthn/passkey_attestation_options_response_dto.dart';
import 'package:banx/core/data/model/response/webauthn/passkey_attestation_response_dto.dart';
import 'package:banx/core/domain/entities/passkey_assertion_options.dart';
import 'package:banx/core/domain/entities/passkey_assertion_result.dart';
import 'package:banx/core/domain/entities/passkey_attestation.dart';
import 'package:banx/core/domain/entities/passkey_attestation_options.dart';

extension PasskeyAttestationMapper on PasskeyAttestationResponseDTO {
  PasskeyAttestation toEntity() {
    return PasskeyAttestation(
      status: status,
      credential: Credential(
        id: credential.id,
        type: credential.type,
        nickName: credential.nickName,
        registrationTime: credential.registrationTime,
        lastUsedTime: credential.lastUsedTime,
        iconURI: credential.iconURI,
        isHighAssurance: credential.isHighAssurance,
        state: credential.state,
      ),
    );
  }
}

extension PasskeyAttestationOptionsMapper on PasskeyAttestationOptionsResponseDTO {
  PasskeyAttestationOptions toEntity() {
    return PasskeyAttestationOptions(
      requestId: requestId,
      publicKey: PublicKey(
        rp: Rp(
          name: publicKey.rp.name,
          id: publicKey.rp.id,
        ),
        user: User(
          id: publicKey.user.id,
          name: publicKey.user.name,
          displayName: publicKey.user.displayName,
        ),
        challenge: publicKey.challenge,
        pubKeyCredParams: publicKey.pubKeyCredParams
            .map((e) => PubKeyCredParam(
          type: e.type,
          alg: e.alg,
        ))
            .toList(),
        timeout: publicKey.timeout,
        excludeCredentials: publicKey.excludeCredentials
            .map((e) => ExcludeCredential(
          type: e.type,
          id: e.id,
        ))
            .toList(),
        authenticatorSelection: AuthenticatorSelection(
          residentKey: publicKey.authenticatorSelection.residentKey,
          authenticatorAttachment:
          publicKey.authenticatorSelection.authenticatorAttachment,
          userVerification: publicKey.authenticatorSelection.userVerification,
        ),
        attestation: publicKey.attestation,
      ),
    );
  }
}

extension PasskeyAssertionResultMapper on PasskeyAssertionResultResponseDTO {
  PasskeyAssertionResult toEntity() {
    return PasskeyAssertionResult(
      status: status,
      loa: loa,
    );
  }
}

extension PasskeyAssertionOptionsMapper on PasskeyAssertionOptionsResponseDTO {
  PasskeyAssertionOptions toEntity() {
    return PasskeyAssertionOptions(
      requestId: requestId,
      publicKey: PublicKeyAssertionOptions(
        challenge: publicKey.challenge,
        timeout: publicKey.timeout,
        rpId: publicKey.rpId,
        allowCredentials: publicKey.allowCredentials
            .map((e) => AllowCredential(
          id: e.id,
          type: e.type,
        ))
            .toList(),
        userVerification: publicKey.userVerification,
      ),
      errorMessage: errorMessage,
    );
  }
}
