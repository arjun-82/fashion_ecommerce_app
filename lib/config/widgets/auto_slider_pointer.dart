
// slider Pointer Navigator

import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class SliderPointer extends StatelessWidget {
  final List items;
  
  const SliderPointer({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final controller = Get.put(SliderController());
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: items.asMap().entries.map((entry) {
          return Padding(
              padding: const EdgeInsets.all(4.0),
              // ignore: unrelated_type_equality_checks
              child: controller.sliderCurrentIndex == entry.key
                  ? Container(
                      height: 7,
                      width: 20,
                      decoration: BoxDecoration(
                          color: isDarkMode ? TDark.primary : TLight.primary,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                    )
                  : Container(
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                        color: isDarkMode ? TLight.label : TDark.label,
                        shape: BoxShape.circle,
                      )));
        }).toList(),
      ),
    );
  }
}