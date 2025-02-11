
import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class HeadLogo extends StatelessWidget {
  const HeadLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FittedBox(
          child: Text(
            "Fasion",
            style: TextStyle(fontFamily: Font.secondaryFont),
          ),
        ),
        FittedBox(
          child: Text(
            "Enhance Your style",
            style: Theme.of(context).textTheme.labelLarge,
          ),
        )
      ],
    );
  }
}
