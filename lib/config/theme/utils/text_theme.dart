import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class ThemeText {
  static const TextTheme light = TextTheme(
    displayLarge: TextStyle(
      color: TLight.primary,
      fontSize: 48,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: TLight.primary,
      fontSize: TextSize.px28,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      color: TLight.primary,
      fontSize: TextSize.px28,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: TextStyle(
      color: TLight.primary,
      fontSize: TextSize.px28,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      color: TLight.primary,
      fontSize: TextSize.px28,
      fontWeight: FontWeight.w700,
    ),
    headlineSmall: TextStyle(
      color: TLight.primary,
      fontSize: TextSize.px24,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle(
      color: TLight.primary,
      fontSize: TextSize.px24,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      color: TLight.primary,
      fontSize: TextSize.px24,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      color: TLight.primary,
      fontSize: TextSize.px20,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      color: TLight.primary,
      fontSize: TextSize.px16,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      color: MainPalette.secondary,
      fontSize: TextSize.px16,
      fontWeight: FontWeight.w600,
    ),
    bodySmall: TextStyle(
      color: TLight.primary,
      fontSize: TextSize.px14,
      fontWeight: FontWeight.w600,
    ),
    labelLarge: TextStyle(
      color: TLight.label,
      fontSize: TextSize.px14,
      fontWeight: FontWeight.w700,
    ),
    labelMedium: TextStyle(
      color: TLight.label,
      fontSize: TextSize.px12,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      color: TLight.label,
      fontSize: TextSize.px8,
      fontWeight: FontWeight.w400,
    ),
  );

  static const TextTheme dark = TextTheme(
    displayLarge: TextStyle(
      color: TDark.primary,
      fontSize: 38,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      color: TDark.primary,
      fontSize: TextSize.px28,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      color: TDark.primary,
      fontSize: TextSize.px28,
      fontWeight: FontWeight.bold,
    ),
    headlineLarge: TextStyle(
      color: TDark.primary,
      fontSize: TextSize.px28,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      color: TDark.primary,
      fontSize: TextSize.px28,
      fontWeight: FontWeight.w700,
    ),
    headlineSmall: TextStyle(
      color: TDark.primary,
      fontSize: TextSize.px24,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle(
      color: TDark.primary,
      fontSize: TextSize.px24,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      color: TDark.primary,
      fontSize: TextSize.px24,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle(
      color: TDark.primary,
      fontSize: TextSize.px20,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      color: TDark.primary,
      fontSize: TextSize.px16,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      color: TDark.primary,
      fontSize: TextSize.px16,
      fontWeight: FontWeight.w600,
    ),
    bodySmall: TextStyle(
      color: TDark.primary,
      fontSize: TextSize.px14,
      fontWeight: FontWeight.w600,
    ),
    labelLarge: TextStyle(
      color: TDark.label,
      fontSize: TextSize.px14,
      fontWeight: FontWeight.w700,
    ),
    labelMedium: TextStyle(
      color: TDark.label,
      fontSize: TextSize.px12,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      color: TDark.label,
      fontSize: TextSize.px8,
      fontWeight: FontWeight.w400,
    ),
  );
}
