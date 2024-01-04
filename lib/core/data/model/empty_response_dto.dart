import 'package:freezed_annotation/freezed_annotation.dart';

part 'empty_response_dto.freezed.dart';
part 'empty_response_dto.g.dart';

@freezed
class EmptyResponseDto with _$EmptyResponseDto {
  const factory EmptyResponseDto() = _EmptyResponseDto;

  factory EmptyResponseDto.fromJson(Map<String, dynamic> json) =>
      _$EmptyResponseDtoFromJson(json);

  factory EmptyResponseDto.empty() {
    return const EmptyResponseDto();
  }
}
