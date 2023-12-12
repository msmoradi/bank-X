import 'package:banx/core/designsystem/theme/button_const.dart';
import 'package:flutter/material.dart';

class BanxFilledButtonTheme {
  static FilledButtonThemeData filledButtonThemeData(ColorScheme colorScheme) {
    return FilledButtonThemeData(
      style: FilledButton.styleFrom(
        iconColor: colorScheme.onPrimary,
        backgroundColor: colorScheme.primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BanxButtonConst.borderRadius)),
        fixedSize: const Size.fromHeight(BanxButtonConst.minimumHeightSize),
      ),
    );
  }
}
