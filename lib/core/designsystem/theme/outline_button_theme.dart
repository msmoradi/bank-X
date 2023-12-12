import 'package:banx/core/designsystem/theme/button_const.dart';
import 'package:flutter/material.dart';

class BanxOutlineButtonTheme {
  static OutlinedButtonThemeData outlinedButtonThemeData = OutlinedButtonThemeData(
    style: FilledButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BanxButtonConst.borderRadius)),
        fixedSize: const Size.fromHeight(BanxButtonConst.minimumHeightSize),
        ),
  );
}
