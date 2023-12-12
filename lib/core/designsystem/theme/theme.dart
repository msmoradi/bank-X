import "package:banx/core/designsystem/theme/outline_button_theme.dart";
import "package:banx/core/designsystem/theme/text_styles.dart";
import "package:flutter/material.dart";

import "filled_button_theme.dart";
import "input_decoration_theme.dart";

class BanxTheme {
  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff000000),
      surfaceTint: Color(0xff5E5E5E),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff262626),
      onPrimaryContainer: Color(0xffB1B1B1),
      secondary: Color(0xff6C5D31),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffD8C58F),
      onSecondaryContainer: Color(0xff41350C),
      tertiary: Color(0xff595F64),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffEEF4F9),
      onTertiaryContainer: Color(0xff4C5357),
      error: Color(0xff9C0011),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffD32F2F),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xffF9F9F9),
      onBackground: Color(0xff1B1B1B),
      surface: Color(0xffFFFFFF),
      onSurface: Color(0xff1C1B1B),
      surfaceVariant: Color(0xffE0E3E3),
      onSurfaceVariant: Color(0xff444748),
      outline: Color(0xff747878),
      outlineVariant: Color(0xffC4C7C8),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff313030),
      inverseOnSurface: Color(0xffF4F0EF),
      inversePrimary: Color(0xffC6C6C6),
      primaryFixed: Color(0xffE2E2E2),
      onPrimaryFixed: Color(0xff1B1B1B),
      primaryFixedDim: Color(0xffC6C6C6),
      onPrimaryFixedVariant: Color(0xff474747),
      secondaryFixed: Color(0xffF6E1A9),
      onSecondaryFixed: Color(0xff231B00),
      secondaryFixedDim: Color(0xffD9C590),
      onSecondaryFixedVariant: Color(0xff53461C),
      tertiaryFixed: Color(0xffDDE3E8),
      onTertiaryFixed: Color(0xff161C20),
      tertiaryFixedDim: Color(0xffC1C7CC),
      onTertiaryFixedVariant: Color(0xff41484C),
      surfaceDim: Color(0xffDDD9D9),
      surfaceBright: Color(0xffF8FAFC),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffF6F3F2),
      surfaceContainer: Color(0xffF1EDEC),
      surfaceContainerHigh: Color(0xffEBE7E7),
      surfaceContainerHighest: Color(0xffE5E2E1),
    );
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffC6C6C6),
      surfaceTint: Color(0xffC6C6C6),
      onPrimary: Color(0xff303030),
      primaryContainer: Color(0xff000000),
      onPrimaryContainer: Color(0xff969696),
      secondary: Color(0xffF5E1A9),
      onSecondary: Color(0xff3B2F07),
      secondaryContainer: Color(0xffCAB783),
      onSecondaryContainer: Color(0xff362B04),
      tertiary: Color(0xffffffff),
      onTertiary: Color(0xff2B3135),
      tertiaryContainer: Color(0xffCFD5DA),
      onTertiaryContainer: Color(0xff3A4044),
      error: Color(0xffFFB3AC),
      onError: Color(0xff680008),
      errorContainer: Color(0xffC72528),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xff131313),
      onBackground: Color(0xffE2E2E2),
      surface: Color(0xff141313),
      onSurface: Color(0xffE5E2E1),
      surfaceVariant: Color(0xff444748),
      onSurfaceVariant: Color(0xffC4C7C8),
      outline: Color(0xff8E9192),
      outlineVariant: Color(0xff444748),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffE5E2E1),
      inverseOnSurface: Color(0xff313030),
      inversePrimary: Color(0xff5E5E5E),
      primaryFixed: Color(0xffE2E2E2),
      onPrimaryFixed: Color(0xff1B1B1B),
      primaryFixedDim: Color(0xffC6C6C6),
      onPrimaryFixedVariant: Color(0xff474747),
      secondaryFixed: Color(0xffF6E1A9),
      onSecondaryFixed: Color(0xff231B00),
      secondaryFixedDim: Color(0xffD9C590),
      onSecondaryFixedVariant: Color(0xff53461C),
      tertiaryFixed: Color(0xffDDE3E8),
      onTertiaryFixed: Color(0xff161C20),
      tertiaryFixedDim: Color(0xffC1C7CC),
      onTertiaryFixedVariant: Color(0xff41484C),
      surfaceDim: Color(0xff141313),
      surfaceBright: Color(0xff3A3939),
      surfaceContainerLowest: Color(0xff0E0E0E),
      surfaceContainerLow: Color(0xff1C1B1B),
      surfaceContainer: Color(0xff201F1F),
      surfaceContainerHigh: Color(0xff2A2A2A),
      surfaceContainerHighest: Color(0xff353434),
    );
  }

  static ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static ThemeData theme(ColorScheme colorScheme) => ThemeData(
        fontFamily: FalomenTextStyles.fontFamilyName,
        textTheme: FalomenTextStyles.textTheme,
        brightness: colorScheme.brightness,
        filledButtonTheme: BanxFilledButtonTheme.filledButtonThemeData(colorScheme),
        outlinedButtonTheme: BanxOutlineButtonTheme.outlinedButtonThemeData,
        inputDecorationTheme: BanxInputDecorationTheme.inputDecorationTheme,
        colorScheme: colorScheme,
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      surfaceTint: surfaceTint,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      inversePrimary: inversePrimary,
      primaryFixed: primaryFixed,
      onPrimaryFixed: onPrimaryFixed,
      primaryFixedDim: primaryFixedDim,
      onPrimaryFixedVariant: onPrimaryFixedVariant,
      secondaryFixed: secondaryFixed,
      onSecondaryFixed: onSecondaryFixed,
      secondaryFixedDim: secondaryFixedDim,
      onSecondaryFixedVariant: onSecondaryFixedVariant,
      tertiaryFixed: tertiaryFixed,
      onTertiaryFixed: onTertiaryFixed,
      tertiaryFixedDim: tertiaryFixedDim,
      onTertiaryFixedVariant: onTertiaryFixedVariant,
      surfaceDim: surfaceDim,
      surfaceBright: surfaceBright,
      surfaceContainerLowest: surfaceContainerLowest,
      surfaceContainerLow: surfaceContainerLow,
      surfaceContainer: surfaceContainer,
      surfaceContainerHigh: surfaceContainerHigh,
      surfaceContainerHighest: surfaceContainerHighest,
    );
  }
}
