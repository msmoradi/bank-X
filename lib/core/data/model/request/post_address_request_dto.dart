import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_address_request_dto.freezed.dart';
part 'post_address_request_dto.g.dart';

@freezed
class PostAddressRequestDto with _$PostAddressRequestDto {
  const factory PostAddressRequestDto({
    required String postalCode,
    required String address,
    required String region,
    required String street,
    required String plaque,
    required String floor,
    required String unit,
    required String houseName,
    required int cityId,
    required int provinceId,
  }) = _PostAddressRequestDto;

  factory PostAddressRequestDto.fromJson(Map<String, dynamic> json) => _$PostAddressRequestDtoFromJson(json);
}
