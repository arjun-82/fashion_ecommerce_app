import 'package:fashion/config/constant/colors.dart';
import 'package:flutter/material.dart';

class ThemeColorScheme {
  static const ColorScheme light = ColorScheme(
    primary: MainPalette.primary,
    secondary: MainPalette.secondary,
    surface: Color(0xFFFFFFFF),
    background: Color(0xFFFFFFFF),
    error: Colors.red,
    onPrimary: Colors.white, // Contrast color for primary
    onSecondary: Colors.white, // Contrast color for secondary
    onSurface: Colors.black, // Contrast color for light surface
    onBackground: Colors.black, // Contrast color for light background
    onError: Colors.red, // Contrast color for error
    brightness: Brightness.light,
  );

  static const ColorScheme dark = ColorScheme(
    primary: MainPalette.primary,
    secondary: MainPalette.tertiary,
    surface: Color(0xFF121212),
    background: Color(0xFF121212),
    error: Colors.redAccent,
    onPrimary: Colors.black, // Contrast color for primary
    onSecondary: Colors.black, // Contrast color for secondary
    onSurface: Colors.white, // Contrast color for dark surface
    onBackground: Colors.white, // Contrast color for dark background
    onError: Colors.red, // Contrast color for error
    brightness: Brightness.dark, // Correct brightness for dark theme
  );
}
