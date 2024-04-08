import 'package:banx/core/data/model/address_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_inquiry_response_dto.freezed.dart';
part 'get_inquiry_response_dto.g.dart';

@freezed
class GetInquiryResponseDto with _$GetInquiryResponseDto {
  const factory GetInquiryResponseDto({
    required AddressDto address,
  }) = _GetInquiryResponseDto;

  factory GetInquiryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetInquiryResponseDtoFromJson(json);
}
