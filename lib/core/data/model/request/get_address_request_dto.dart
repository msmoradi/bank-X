import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_address_request_dto.freezed.dart';
part 'get_address_request_dto.g.dart';

@freezed
class GetAddressRequestDto with _$GetAddressRequestDto {
  const factory GetAddressRequestDto({
    required int page,
    required int size,
    required List<String> sort,
  }) = _GetAddressRequestDto;

  factory GetAddressRequestDto.fromJson(Map<String, dynamic> json) => _$GetAddressRequestDtoFromJson(json);
}
