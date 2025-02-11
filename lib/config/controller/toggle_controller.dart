import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class ToggleController extends GetxController {
  RxBool isToggle = true.obs;

  void toggleIcon() {
    isToggle.value = !isToggle.value;
  }
}

class ExpandedController extends GetxController {
  final _isExpanded = false.obs;

  bool get isExpanded => _isExpanded.value;

  void toggleExpanded() {
    _isExpanded.value = !_isExpanded.value;
  }
}

class CartToggleController extends GetxController {
  RxBool isToggleCart = true.obs;
  void toggleIcon(BuildContext context) {
    isToggleCart.value = !isToggleCart.value;
    isToggleCart.value
                  ? CustomSnackbar.showFaild(
                      context,
                      "Removed",
                      "Product Removed in Bag",
                      const Icon(HugeIcons.strokeRoundedShoppingBagRemove))
                  : CustomSnackbar.showSuccess(
                      context,
                      "Baged",
                      "Product Added to Bag",
                      const Icon(HugeIcons.strokeRoundedShoppingBagFavorite),
                      const Color.fromARGB(255, 85, 209, 89));
  }
}
