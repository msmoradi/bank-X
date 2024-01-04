// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpResponseDtoImpl _$$SignUpResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpResponseDtoImpl(
      expiresIn: (json['expiresIn'] as num).toInt(),
      codeLength: (json['codeLength'] as num).toInt(),
    );

Map<String, dynamic> _$$SignUpResponseDtoImplToJson(
        _$SignUpResponseDtoImpl instance) =>
    <String, dynamic>{
      'expiresIn': instance.expiresIn,
      'codeLength': instance.codeLength,
    };
