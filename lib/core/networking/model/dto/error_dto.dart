import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_dto.freezed.dart';
part 'error_dto.g.dart';

@freezed
class ErrorDto with _$ErrorDto {
  const factory ErrorDto({
    required String? error,
    required int? code,
    required String message,
    required ErrorAction? action,
  }) = _ErrorDto;

  factory ErrorDto.fromJson(Map<String, dynamic> json) => _$ErrorDtoFromJson(json);
}

enum ErrorAction {
  @JsonValue('LOGGED_OUT')
  loggedOut,
  @JsonValue('NFC_LOGIN')
  nfcLogin,
  @JsonValue('PASSWORD_LOGIN')
  passwordLogin,
  @JsonValue('TOAST')
  toast
}
