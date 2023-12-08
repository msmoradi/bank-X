// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorDtoImpl _$$ErrorDtoImplFromJson(Map<String, dynamic> json) =>
    _$ErrorDtoImpl(
      error: json['error'] as String?,
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String,
      action: $enumDecodeNullable(_$ErrorActionEnumMap, json['action']),
    );

Map<String, dynamic> _$$ErrorDtoImplToJson(_$ErrorDtoImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'code': instance.code,
      'message': instance.message,
      'action': _$ErrorActionEnumMap[instance.action],
    };

const _$ErrorActionEnumMap = {
  ErrorAction.loggedOut: 'LOGGED_OUT',
  ErrorAction.nfcLogin: 'NFC_LOGIN',
  ErrorAction.passwordLogin: 'PASSWORD_LOGIN',
  ErrorAction.toast: 'TOAST',
};
