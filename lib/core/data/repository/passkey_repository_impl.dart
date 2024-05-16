import 'package:banx/core/data/datasource/remote/passkey_remote_data_source.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_assertion_options_request_dto.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_assertion_result_request_dto.dart';
import 'package:banx/core/data/model/request/webauthn/passkey_attestation_options_request_dto.dart';
import 'package:banx/core/data/model/response/webauthn/passkey_assertion_result_response_dto.dart';
import 'package:banx/core/data/model/response/webauthn/passkey_attestation_response_dto.dart';
import 'package:banx/core/data/passkey/authenticator.dart';
import 'package:banx/core/domain/repository/passkey_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: PasskeyRepository)
class PasskeyRepositoryImpl implements PasskeyRepository {
  final PasskeyRemoteDataSource remoteDataSource;

  PasskeyRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<PasskeyAssertionResultResponseDTO> register(
      PasskeyAssertionOptionsRequestDTO request) async {
    final passkeyAuthenticator = PasskeyAuthenticator();

    // initiate sign up by calling the relying party server
    final webAuthnChallenge =
        await remoteDataSource.getPasskeyAssertionOptions(request);
    // call the platform authenticator to register a new passkey on the device
    final platformRes = await passkeyAuthenticator
        .register(webAuthnChallenge.toRegisterRequestType());
    // finish sign up by calling the relying party server again
    return await remoteDataSource.sendPasskeyAssertionResult(
        platformRes.toPasskeyAssertionResultRequestDTO());
  }

  @override
  Future<PasskeyAttestationResponseDTO> signIn(PasskeyAttestationOptionsRequestDTO request) {
/* final passkeyAuthenticator = PasskeyAuthenticator();

    final webAuthnChallenge = await remoteDataSource
        .getPasskeyAttestationOptions(PasskeyAttestationOptionsRequestDTO());
    // call the platform authenticator to ask the user to sign the challenge with his passkey
    final platformRes =
        await passkeyAuthenticator.authenticate(webAuthnChallenge);
    // finish sign in by calling the relying party server again
    return await remoteDataSource.sendPasskeyAttestation(platformRes);*/

    throw UnimplementedError();
  }
}
