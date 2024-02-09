import 'package:banx/core/domain/entities/kyc_status_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kyc_status_state.freezed.dart';

enum KycStatusStatus { initial, failure, loading, deepLinkLanding }

@freezed
class KycStatusState with _$KycStatusState {
  const KycStatusState._();

  const factory KycStatusState({
    @Default(KycStatusStatus.initial) KycStatusStatus status,
    @Default('') String errorMessage,
    @Default('') String deeplink,
    @Default('') String actionTitle,
    @Default(KYCStatusEntity()) KYCStatusEntity identity,
    @Default(KYCStatusEntity()) KYCStatusEntity phoneNumber,
    @Default(KYCStatusEntity()) KYCStatusEntity face,
    @Default(KYCStatusEntity()) KYCStatusEntity sayah,
  }) = _KycStatusState;

  String get actionIcon => deeplink.isEmpty ? "refresh-ccw" : "arrow-left";

  IconAlignment get iconAlignment =>
      deeplink.isEmpty ? IconAlignment.start : IconAlignment.end;
}
