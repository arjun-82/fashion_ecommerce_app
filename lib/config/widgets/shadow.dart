
import 'package:flutter/material.dart';

class ShadowBox {
  final Color? lightModeColor;
  final Color? darkModeColor;

  ShadowBox({
    this.lightModeColor,
    this.darkModeColor,
  });

  BoxShadow toBoxShadow(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return BoxShadow(
      color: isDarkMode
          ? (darkModeColor ?? Colors.grey.withOpacity(0.5))
          : (lightModeColor ?? Colors.black.withOpacity(0.2)),
      blurRadius: 10,
      offset: const Offset(0, 3),
    );
  }
}
