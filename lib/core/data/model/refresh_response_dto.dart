import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_response_dto.freezed.dart';

@freezed
class RefreshResponseDto with _$RefreshResponseDto {
  const factory RefreshResponseDto(
    String refresh,
  ) = _RefreshResponseDto;

  const factory RefreshResponseDto.json(Map<String, dynamic> data) = Json;
}
