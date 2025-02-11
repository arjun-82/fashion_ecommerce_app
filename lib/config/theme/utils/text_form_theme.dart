import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class ThemeFormField {
  static final light = InputDecorationTheme(
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(ButtonSize.fixedRadius),
        borderSide: const BorderSide(color: MainPalette.tertiary, width: 1)),
    contentPadding: PaddingChart.horizontalMedium,
    fillColor: MainPalette.tertiary,
    filled: true,
    constraints: const BoxConstraints(minHeight: 50),
    activeIndicatorBorder:
        const BorderSide(color: MainPalette.tertiary, width: 0),
    disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(ButtonSize.fixedRadius),
        borderSide: const BorderSide(color: ButtonLight.disabled, width: 1)),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(ButtonSize.fixedRadius),
        borderSide: const BorderSide(color: MainPalette.tertiary, width: 0)),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(ButtonSize.fixedRadius),
        borderSide: const BorderSide(color: Colors.red, width: 1)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(ButtonSize.fixedRadius),
        borderSide: const BorderSide(color: MainPalette.tertiary, width: 1)),
    hoverColor: MainPalette.shade60,
    errorStyle: const TextStyle(color: Colors.red),
    hintStyle: const TextStyle(
        color: TLight.label,
        fontSize: TextSize.px12,
        fontFamily: Font.primaryFont),
    labelStyle: const TextStyle(
        color: TLight.label,
        fontSize: TextSize.px14,
        fontFamily: Font.primaryFont),
    helperStyle: const TextStyle(
        color: TLight.primary,
        fontSize: TextSize.px14,
        fontFamily: Font.primaryFont),
  );

  static final dark = InputDecorationTheme(
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(ButtonSize.fixedRadius),
        borderSide: const BorderSide(color: MainPalette.secondary, width: 1)),
    contentPadding: PaddingChart.horizontalMedium,
    fillColor: MainPalette.secondary,
    filled: true,
    constraints: const BoxConstraints(maxHeight: 50),
    activeIndicatorBorder:
        const BorderSide(color: MainPalette.secondary, width: 0),
    disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(ButtonSize.fixedRadius),
        borderSide: const BorderSide(color: ButtonDark.disabled, width: 1)),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(ButtonSize.fixedRadius),
        borderSide: const BorderSide(color: MainPalette.secondary, width: 0)),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(ButtonSize.fixedRadius),
        borderSide: const BorderSide(color: Colors.red, width: 1)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(ButtonSize.fixedRadius),
        borderSide: const BorderSide(
          color: MainPalette.secondary,
          width: 1,
        )),
    hoverColor: MainPalette.shade160,
    errorStyle: const TextStyle(color: Colors.red),
    hintStyle: const TextStyle(
        color: TLight.label,
        fontSize: TextSize.px12,
        fontFamily: Font.primaryFont),
    labelStyle: const TextStyle(
        color: TLight.label,
        fontSize: TextSize.px14,
        fontFamily: Font.primaryFont),
    helperStyle: const TextStyle(
        color: TLight.primary,
        fontSize: TextSize.px14,
        fontFamily: Font.primaryFont),
  );
}
