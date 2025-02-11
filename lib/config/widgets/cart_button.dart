import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class AddCartButton extends StatelessWidget {
  const AddCartButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final toggle = Get.put(CartToggleController());
    return Obx(
      () => Material(
        elevation: 2,
        shape: const CircleBorder(),
        color: isDarkMode ? ButtonDark.active : ButtonLight.active,
        child: IconButton(
            onPressed: () {
              toggle.toggleIcon(context);
            },
            style: ButtonStyle(
                elevation: const WidgetStatePropertyAll(2),
                backgroundColor: WidgetStatePropertyAll(
                    isDarkMode ? ButtonDark.active : ButtonLight.active),
                shape: const WidgetStatePropertyAll(CircleBorder())),
            icon: toggle.isToggleCart.value
                ? Icon(
                    HugeIcons.strokeRoundedShoppingBagAdd,
                    color: isDarkMode
                        ? MainPalette.tertiary
                        : MainPalette.secondary,
                  )
                : const Icon(
                    HugeIcons.strokeRoundedShoppingBagRemove,
                    color: MainPalette.primary,
                  )),
      ),
    );
  }
}
