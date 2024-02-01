// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KycResponseDtoImpl _$$KycResponseDtoImplFromJson(Map<String, dynamic> json) =>
    _$KycResponseDtoImpl(
      routingButton: RoutingButtonDto.fromJson(
          json['routingButton'] as Map<String, dynamic>),
      state: KycStateDto.fromJson(json['state'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$KycResponseDtoImplToJson(
        _$KycResponseDtoImpl instance) =>
    <String, dynamic>{
      'routingButton': instance.routingButton,
      'state': instance.state,
    };

_$KycStateDtoImpl _$$KycStateDtoImplFromJson(Map<String, dynamic> json) =>
    _$KycStateDtoImpl(
      identityStatus:
          KYCStatusDto.fromJson(json['identityStatus'] as Map<String, dynamic>),
      phoneStatus:
          KYCStatusDto.fromJson(json['phoneStatus'] as Map<String, dynamic>),
      faceStatus:
          KYCStatusDto.fromJson(json['faceStatus'] as Map<String, dynamic>),
      sayahStatus:
          KYCStatusDto.fromJson(json['sayahStatus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$KycStateDtoImplToJson(_$KycStateDtoImpl instance) =>
    <String, dynamic>{
      'identityStatus': instance.identityStatus,
      'phoneStatus': instance.phoneStatus,
      'faceStatus': instance.faceStatus,
      'sayahStatus': instance.sayahStatus,
    };

_$KYCStatusImpl _$$KYCStatusImplFromJson(Map<String, dynamic> json) =>
    _$KYCStatusImpl(
      status: $enumDecode(_$KYCStatusEnumMap, json['status']),
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$KYCStatusImplToJson(_$KYCStatusImpl instance) =>
    <String, dynamic>{
      'status': _$KYCStatusEnumMap[instance.status]!,
      'title': instance.title,
      'description': instance.description,
    };

const _$KYCStatusEnumMap = {
  KYCStatus.pending: 'PENDING',
  KYCStatus.checking: 'CHECKING',
  KYCStatus.succeeded: 'SUCCEEDED',
  KYCStatus.failed: 'FAILED',
};
