import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class CustomSnackbar {
  static void showError(
    BuildContext context,
    String title,
    String message,
  ) {
    _showSnackbar(
      context,
      title,
      message,
      title,
      message,
      CupertinoColors.destructiveRed,
      SnackPosition.BOTTOM,
      const Icon(HugeIcons.strokeRoundedSettingsError01),
    );
  }

  static void showInfo(
    BuildContext context,
    String title,
    String message,
  ) {
    _showSnackbar(
      context,
      title,
      message,
      title,
      message,
      const Color.fromARGB(255, 49, 149, 230),
      SnackPosition.BOTTOM,
      const Icon(HugeIcons.strokeRoundedInformationDiamond),
    );
  }

  static void showNotification(
    BuildContext context,
    String title,
    String message,
    Icon? icon,
  ) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    _showSnackbar(
      context,
      title,
      message,
      title,
      message,
      isDarkMode ? MainPalette.shade120 : MainPalette.shade40,
      SnackPosition.TOP,
      icon ??
          const Icon(
            HugeIcons.strokeRoundedNotification01,
            color: MainPalette.secondary,
          ),
    );
  }

  static void showSuccess(
    BuildContext context,
    String title,
    String message,
    Icon icon,
    Color color,
  ) {
    _showSnackbar(context, title, message, title, message, color,
        SnackPosition.TOP, icon);
  }

  static void showFaild(
    BuildContext context,
    String title,
    String message,
    Icon icon,
  ) {
    _showSnackbar(context, title, message, title, message,
        const Color.fromARGB(255, 243, 175, 73), SnackPosition.TOP, icon);
  }

  static void showException(
      BuildContext context, String title, String message) {
    _showSnackbar(
      context,
      title,
      message,
      title,
      message,
      const Color.fromARGB(255, 236, 104, 95),
      SnackPosition.BOTTOM,
      const Icon(HugeIcons.strokeRoundedAlert01),
    );
  }

  static void _showSnackbar(
    BuildContext context,
    String title,
    String message,
    String titleText,
    String messageText,
    Color backgroundColor,
    SnackPosition snackPosition,
    Icon icon,
  ) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final snackBar = GetSnackBar(
      title: title,
      message: message,
      titleText: Text(titleText,
          style: TextStyle(
            color: isDarkMode ? MainPalette.secondary : MainPalette.tertiary,
          )),
      messageText: Text(
        messageText,
        style: TextStyle(
          color: isDarkMode ? MainPalette.secondary : MainPalette.tertiary,
        ),
      ),
      backgroundColor: backgroundColor,
      duration: const Duration(seconds: 3),
      snackPosition: snackPosition,
      margin: PaddingChart.allSmall,
      animationDuration: const Duration(milliseconds: 900),
      snackStyle: SnackStyle.FLOATING,
      borderRadius: 15,
      icon: icon,
      // isDismissible: true,
      reverseAnimationCurve: Curves.decelerate,
    );
    Get.showSnackbar(snackBar);
  }
}
