import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_response_dto.freezed.dart';
part 'sign_up_response_dto.g.dart';

@freezed
class SignUpResponseDto with _$SignUpResponseDto {
  const factory SignUpResponseDto({
    required int expiresIn,
    required int codeLength,
  }) = _SignUpResponseDto;

  factory SignUpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseDtoFromJson(json);
}
