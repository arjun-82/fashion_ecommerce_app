import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class CartProductCounter extends StatelessWidget {
  const CartProductCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Positioned(
      right: 15,
      top: 36,
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ButtonSize.fixedRadius),
            border: Border.all(
                color:
                    isDarkMode ? MainPalette.tertiary : MainPalette.secondary,
                width: 0.4)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(size: 20, HugeIcons.strokeRoundedAddCircle)),
            Text(
              "0",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(size: 20, HugeIcons.strokeRoundedRemoveCircle))
          ],
        ),
      ),
    );
  }
}
