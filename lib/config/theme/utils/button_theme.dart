import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class ThemeButton {
  // ElevatedButton
  static final eLight = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 2,
          foregroundColor: Colors.white,
          iconColor: Background.light,
          backgroundColor: MainPalette.secondary,
          disabledBackgroundColor: ButtonLight.disabled,
          disabledIconColor: ButtonLight.disabled,
          fixedSize: const Size(ButtonSize.fixedHeight, ButtonSize.fixedWidth),
          padding: PaddingChart.horizontalSmall,
          shape: const RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(ButtonSize.fixedRadius))),
          textStyle: const TextStyle(
              color: TLight.primary,
              fontSize: TextSize.px20,
              fontFamily: Font.primaryFont,
              fontWeight: FontWeight.w600)));

  static final eDark = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 2,
    foregroundColor: Colors.black,
    iconColor: Background.dark,
    backgroundColor: MainPalette.tertiary,
    disabledBackgroundColor: ButtonDark.disabled,
    disabledIconColor: ButtonDark.disabled,
    fixedSize: const Size(ButtonSize.fixedHeight, ButtonSize.fixedWidth),
    padding: PaddingChart.horizontalSmall,
    shape: const RoundedRectangleBorder(
        borderRadius:
            BorderRadius.all(Radius.circular(ButtonSize.fixedRadius))),
    textStyle: const TextStyle(
        color: TDark.primary,
        fontSize: TextSize.px20,
        fontFamily: Font.primaryFont,
        fontWeight: FontWeight.w600),
  ));

  static const bLight = ButtonThemeData(
    disabledColor: ButtonLight.disabled,
    hoverColor: ButtonLight.active,
    buttonColor: ButtonLight.primaryContainer,
    focusColor: MainPalette.shade160,
    height: 50,
    minWidth: ButtonSize.fixedWidth,
    padding: PaddingChart.horizontalSmall,
    shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.all(Radius.circular(ButtonSize.fixedRadius))),
    // textTheme: ButtonTextTheme.primary
  );

  static const bDark = ButtonThemeData(
    disabledColor: ButtonDark.disabled,
    hoverColor: ButtonDark.active,
    buttonColor: ButtonDark.primaryContainer,
    focusColor: MainPalette.shade160,
    height: 50,
    minWidth: ButtonSize.fixedWidth,
    padding: PaddingChart.horizontalSmall,
    shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.all(Radius.circular(ButtonSize.fixedRadius))),
    // textTheme: ButtonTextTheme.primary
  );

  // OutlineButton
  static final oLight = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    iconColor: Background.dark,
    foregroundColor: Background.dark,
    disabledBackgroundColor: ButtonLight.disabled,
    disabledIconColor: ButtonLight.disabled,
    fixedSize: const Size(ButtonSize.fixedHeight, ButtonSize.fixedWidth),
    padding: PaddingChart.horizontalSmall,
    shape: const RoundedRectangleBorder(
        borderRadius:
            BorderRadius.all(Radius.circular(ButtonSize.fixedRadius))),
    textStyle: const TextStyle(
        color: TLight.primary,
        fontSize: TextSize.px20,
        fontWeight: FontWeight.w600),
  ));

  static final oDark = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    iconColor: Background.light,
    foregroundColor: Background.light,
    disabledBackgroundColor: ButtonDark.disabled,
    disabledIconColor: ButtonDark.disabled,
    fixedSize: const Size(ButtonSize.fixedHeight, ButtonSize.fixedWidth),
    padding: PaddingChart.horizontalSmall,
    shape: const RoundedRectangleBorder(
        borderRadius:
            BorderRadius.all(Radius.circular(ButtonSize.fixedRadius))),
    textStyle: const TextStyle(
        color: TDark.primary,
        fontSize: TextSize.px20,
        fontWeight: FontWeight.w600),
  ));

  // TextButton
  static final tLight = TextButtonThemeData(
      style: TextButton.styleFrom(
    foregroundColor: Background.light,
    disabledBackgroundColor: ButtonLight.disabled,
    disabledIconColor: ButtonLight.disabled,
    fixedSize: const Size(ButtonSize.fixedHeight, ButtonSize.fixedWidth),
    padding: PaddingChart.horizontalSmall,
    shape: const RoundedRectangleBorder(
        borderRadius:
            BorderRadius.all(Radius.circular(ButtonSize.fixedRadius))),
    textStyle: const TextStyle(
        decoration: TextDecoration.underline,
        fontSize: TextSize.px20,
        fontWeight: FontWeight.w600),
  ));

  static final tDark = TextButtonThemeData(
      style: TextButton.styleFrom(
    foregroundColor: Background.dark,
    disabledBackgroundColor: ButtonDark.disabled,
    disabledIconColor: ButtonDark.disabled,
    fixedSize: const Size(ButtonSize.fixedHeight, ButtonSize.fixedWidth),
    padding: PaddingChart.horizontalSmall,
    shape: const RoundedRectangleBorder(
        borderRadius:
            BorderRadius.all(Radius.circular(ButtonSize.fixedRadius))),
    textStyle: const TextStyle(
        decoration: TextDecoration.underline,
        fontSize: TextSize.px20,
        fontWeight: FontWeight.w600),
  ));

  // IconButton
  static final iLight = IconButtonThemeData(
      style: TextButton.styleFrom(
    foregroundColor: Background.light,
    backgroundColor: ButtonLight.primaryContainer,
    shape: const CircleBorder(),
    disabledBackgroundColor: ButtonLight.disabled,
    disabledIconColor: ButtonLight.disabled,
    fixedSize: const Size(ButtonSize.fixedHeight, ButtonSize.fixedWidth),
    padding: PaddingChart.horizontalSmall,
    textStyle: const TextStyle(
        color: TLight.primary,
        fontSize: TextSize.px20,
        fontWeight: FontWeight.w600),
  ));

  static final iDark = IconButtonThemeData(
      style: TextButton.styleFrom(
    foregroundColor: Background.dark,
    backgroundColor: ButtonDark.primaryContainer,
    shape: const CircleBorder(),
    disabledBackgroundColor: ButtonDark.disabled,
    disabledIconColor: ButtonDark.disabled,
    fixedSize: const Size(ButtonSize.fixedHeight, ButtonSize.fixedWidth),
    padding: PaddingChart.horizontalSmall,
    textStyle: const TextStyle(
        color: TDark.primary,
        fontSize: TextSize.px20,
        fontWeight: FontWeight.w600),
  ));
}
