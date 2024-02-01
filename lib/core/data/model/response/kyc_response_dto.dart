import 'package:banx/core/data/model/response/routing_button_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'kyc_response_dto.freezed.dart';

part 'kyc_response_dto.g.dart';

@freezed
class KycResponseDto with _$KycResponseDto {
  const factory KycResponseDto({
    required RoutingButtonDto routingButton,
    required KycStateDto state,
  }) = _KycResponseDto;

  factory KycResponseDto.fromJson(Map<String, dynamic> json) =>
      _$KycResponseDtoFromJson(json);
}

@freezed
class KycStateDto with _$KycStateDto {
  const factory KycStateDto({
    required KYCStatusDto identityStatus,
    required KYCStatusDto phoneStatus,
    required KYCStatusDto faceStatus,
    required KYCStatusDto sayahStatus,
  }) = _KycStateDto;

  factory KycStateDto.fromJson(Map<String, dynamic> json) =>
      _$KycStateDtoFromJson(json);
}

@freezed
class KYCStatusDto with _$KYCStatusDto {
  const factory KYCStatusDto({
    required KYCStatus status,
    required String title,
    required String description,
  }) = _KYCStatus;

  factory KYCStatusDto.fromJson(Map<String, dynamic> json) =>
      _$KYCStatusDtoFromJson(json);
}

enum KYCStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('CHECKING')
  checking,
  @JsonValue('SUCCEEDED')
  succeeded,
  @JsonValue('FAILED')
  failed,
}
