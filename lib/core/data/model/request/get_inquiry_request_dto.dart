import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_inquiry_request_dto.freezed.dart';
part 'get_inquiry_request_dto.g.dart';

@freezed
class GetInquiryRequestDto with _$GetInquiryRequestDto {
  const factory GetInquiryRequestDto({
    @JsonKey(name: 'postal-code') required String postalCode,
  }) = _GetInquiryRequestDto;

  factory GetInquiryRequestDto.fromJson(Map<String, dynamic> json) =>
      _$GetInquiryRequestDtoFromJson(json);
}
