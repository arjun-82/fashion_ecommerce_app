import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class AppBarHeader extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final bool isleading, centerTitle;
  final Widget? child, title;
  final List<Widget>? actions;

  const AppBarHeader({
    super.key,
    this.height = 50.0,
    this.isleading = true,
    this.child,
    this.actions,
    this.centerTitle = false,
    this.title,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return AppBar(
      automaticallyImplyLeading: isleading,
      centerTitle: centerTitle,
      title: title,
      leading: isleading
          ? IconButton.filled(
              onPressed: () {
                Get.back();
              },
              padding: PaddingChart.allSmall,
              style: ButtonStyle(
                  elevation: const WidgetStatePropertyAll(8),
                  backgroundColor: WidgetStatePropertyAll(
                      isDarkMode ? ButtonDark.active : ButtonLight.active),
                  shape: const WidgetStatePropertyAll(CircleBorder())),
              icon: const Icon(
                HugeIcons.strokeRoundedArrowLeft01,
                weight: 10,
                opticalSize: 14,
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: child,
            ),
      actions: actions,
    );
  }
}
