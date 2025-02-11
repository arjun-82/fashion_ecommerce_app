import 'package:fashion/config/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  const CustomIconButton({
    super.key,
    this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
      height: 38,
      width: 38,
      child: Material(
        elevation: 2,
        shape: const CircleBorder(),
        color: isDarkMode ? ButtonDark.active : ButtonLight.active,
        child: IconButton(
            onPressed: onPressed,
            style: ButtonStyle(
              elevation: const WidgetStatePropertyAll(2),
              backgroundColor: WidgetStatePropertyAll(
                  isDarkMode ? ButtonDark.active : ButtonLight.active),
            ),
            padding: EdgeInsets.zero,
            icon: Icon(
              icon,
              color: isDarkMode ? MainPalette.tertiary : MainPalette.secondary,
            )),
      ),
    );
  }
}
