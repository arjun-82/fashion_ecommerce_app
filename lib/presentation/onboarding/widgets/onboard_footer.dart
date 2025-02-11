import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class OnboardFooter extends StatelessWidget {
  const OnboardFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final controller = Get.put(SliderController());

    return Expanded(
        flex: 2,
        child: Container(
          decoration: const BoxDecoration(
              color: MainPalette.primary,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Padding(
            padding: PaddingChart.allSmall,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SliderPointer(items: ["", "", ""]),
                SizedBox(
                  width: 150,
                  height: ButtonSize.fixedHeight,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      controller.updateNextPage([]);
                    },
                    style: const ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(MainPalette.shade40)),
                    label: const Text(ButtonString.continues),
                    iconAlignment: IconAlignment.end,
                    icon: Icon(
                      FontAwesomeIcons.arrowRight,
                      weight: 10,
                      opticalSize: 10,
                      shadows: [
                        BoxShadow(
                          color: isDarkMode
                              ? (Colors.black.withOpacity(0.5))
                              : (Colors.black.withOpacity(0.2)),
                          blurRadius: 19,
                          offset: const Offset(0, 5),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
