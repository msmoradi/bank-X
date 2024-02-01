import 'package:freezed_annotation/freezed_annotation.dart';

part 'identity_response_dto.freezed.dart';

@freezed
class IdentityResponseDto with _$IdentityResponseDto {
  const factory IdentityResponseDto() = _IdentityResponseDto;

  const factory IdentityResponseDto.json(Map<String, dynamic> data) = Json;
}
