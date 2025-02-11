import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final IconData? icon;
  final String? text;
  const BottomButton({
    super.key,
    required this.onTap,
    this.icon,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      child: Material(
        elevation: 2,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        child: Container(
            height: 60,
            decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Center(
              child: Wrap(
                spacing: 15,
                children: [
                  Icon(
                    icon ?? HugeIcons.strokeRoundedShoppingBag01,
                    color: isDarkMode
                        ? MainPalette.secondary
                        : MainPalette.tertiary,
                  ),
                  Text(
                    text ?? "Add To Cart",
                    style: TextStyle(
                        color: isDarkMode
                            ? MainPalette.secondary
                            : MainPalette.tertiary,
                        fontSize: TextSize.px24,
                        fontWeight: FontWeight.w900),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
