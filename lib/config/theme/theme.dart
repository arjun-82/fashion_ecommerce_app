import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  /// LightTheme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    hoverColor: ButtonLight.active,
    colorScheme: ThemeColorScheme.light,
    // appBarTheme: ThemeAppBar.light,
    hintColor: TLight.secondary,
    disabledColor: ButtonLight.disabled,
    dividerColor: TLight.secondary,
    primaryColor: MainPalette.primary,
    scaffoldBackgroundColor: Background.light,
    brightness: Brightness.light,
    fontFamily: Font.primaryFont,
    textTheme: ThemeText.light,
    // iconTheme: ThemeIcon.light,
    elevatedButtonTheme: ThemeButton.eLight,
    outlinedButtonTheme: ThemeButton.oLight,
    buttonTheme: ThemeButton.bLight,
    inputDecorationTheme: ThemeFormField.light,
    // bottomNavigationBarTheme: ThemeBottomNavBar.light,
    cardColor: MainPalette.secondary,
  );

  /// DarkTheme
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      hoverColor: ButtonDark.active,
      colorScheme: ThemeColorScheme.dark,
      hintColor: TDark.secondary,
      disabledColor: ButtonDark.disabled,
      dividerColor: TDark.secondary,
      primaryColor: MainPalette.primary,
      scaffoldBackgroundColor: Background.dark,
      brightness: Brightness.dark,
      fontFamily: Font.primaryFont,
      textTheme: ThemeText.dark,
      // iconTheme: ThemeIcon.dark,
      elevatedButtonTheme: ThemeButton.eDark,
      outlinedButtonTheme: ThemeButton.oDark,
      buttonTheme: ThemeButton.bDark,
      inputDecorationTheme: ThemeFormField.dark,
      // bottomNavigationBarTheme: ThemeBottomNavBar.dark,
      cardColor: MainPalette.tertiary);
}
