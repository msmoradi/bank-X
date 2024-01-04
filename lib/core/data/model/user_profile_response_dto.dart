import 'package:banx/core/data/model/response/routing_button_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_response_dto.freezed.dart';

part 'user_profile_response_dto.g.dart';

@freezed
class UserProfileResponseDto with _$UserProfileResponseDto {
  const factory UserProfileResponseDto({
    required String? firstName,
    required String? lastName,
    required String? firstNameEN,
    required String? lastNameEN,
    required String? phoneNumber,
    required String? username,
    required String? nationalID,
    required String? photoUrl,
    required bool? hasPassword,
    required bool? nfcActive,
    required String? profileStatus,
    required RoutingButtonDto? routingButton,
    required String? kycLevel,
  }) = _UserProfileResponseDto;

  factory UserProfileResponseDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseDtoFromJson(json);
}
