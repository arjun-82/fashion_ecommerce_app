import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class OfferLabelCounter extends StatelessWidget {
  final String title, counterTitle;
  final Duration? duration;
  const OfferLabelCounter({
    super.key,
    required this.title,
    required this.counterTitle,
    this.duration,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
        height: 50,
        width: double.infinity,
        padding: PaddingChart.horizontalSmall,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: TextSize.px20,
                  color: isDarkMode ? TDark.primary : TLight.primary,
                  fontFamily: Font.secondaryFont),
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 10,
              children: [
                Text(counterTitle,
                    style: TextStyle(
                        fontSize: TextSize.px14,
                        fontWeight: FontWeight.bold,
                        color: isDarkMode ? TDark.label : TLight.label,
                        fontFamily: Font.primaryFont)),
                SlideCountdown(
                  duration: duration ?? const Duration(hours: 1),
                  shouldShowMinutes: (duration) => duration.inDays == 0,
                  replacement: const Text("Missed Out"),
                  separatorPadding: PaddingChart.horizontalSmall,
                  countUp: false,
                  style: TextStyle(
                      fontSize: TextSize.px16,
                      fontWeight: FontWeight.bold,
                      color: isDarkMode ? TDark.primary : TLight.primary,
                      fontFamily: Font.primaryFont),
                  separatorStyle: TextStyle(
                    color: isDarkMode ? TDark.primary : TLight.primary,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(ButtonSize.fixedRadius),
                    color: isDarkMode
                        ? MainPalette.secondary
                        : MainPalette.tertiary,
                  ),
                  padding: PaddingChart.allSmall,
                  onDone: () {
                    CustomSnackbar.showNotification(
                        context,
                        "Notify",
                        "Flash Sale End Just now!!",
                        Icon(HugeIcons.strokeRoundedGiftCard));
                  },
                ),
              ],
            )
          ],
        ));
  }
}
