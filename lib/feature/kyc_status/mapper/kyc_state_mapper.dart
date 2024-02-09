import 'package:banx/core/data/model/response/kyc_response_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension KycStateMapper on KYCStatus {
  String toIconAssets() {
    switch (this) {
      case KYCStatus.succeeded:
        return 'assets/icons/check-circle.svg';
      case KYCStatus.checking:
        return 'assets/icons/clock.svg';
      case KYCStatus.pending:
        return 'assets/icons/clock.svg';
      case KYCStatus.failed:
        return 'assets/icons/triangle-warning.svg';
      default:
        return 'assets/icons/clock.svg';
    }
  }

  Color toBackgroundColor(BuildContext context) {
    switch (this) {
      case KYCStatus.succeeded:
        return const Color(0xff008557);
      case KYCStatus.checking:
        return Theme.of(context).colorScheme.onSurface;
      case KYCStatus.pending:
        return Theme.of(context).colorScheme.onSurface;
      case KYCStatus.failed:
        return Theme.of(context).colorScheme.errorContainer;
      default:
        return Theme.of(context).colorScheme.onSurface;
    }
  }
}
