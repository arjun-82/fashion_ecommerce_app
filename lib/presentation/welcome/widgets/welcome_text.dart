import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tColor = Theme.of(context).brightness == Brightness.light;
    return Animate(
      effects: const [
        FadeEffect(
          duration: Duration(milliseconds: 900),
        ),
        ShimmerEffect(
            duration: Duration(
              milliseconds: 900,
            ),
            delay: Duration(milliseconds: 900))
      ],
      child: Column(
        children: [
          Text(
            "Your style tell about you ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: TextSize.px38,
                color: tColor ? TLight.primary : TDark.primary,
                fontFamily: Font.secondaryFont),
            textAlign: TextAlign.center,
          ),
          Spacing.normalHeight,
          Text(
            "There are many clothes with designs that are suitable for you today ",
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
