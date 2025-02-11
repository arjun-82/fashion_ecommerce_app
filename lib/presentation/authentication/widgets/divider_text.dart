import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class TextDivider extends StatelessWidget {
  final String text;
  const TextDivider({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 2,
            color: Theme.of(context).dividerColor,
          ),
        ),
        Padding(
          padding: PaddingChart.horizontalSmall,
          child: Text(
            text,
            style: TextStyle(
              fontSize: TextSize.px14,
              color: Theme.of(context).hintColor,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            thickness: 2,
            color: Theme.of(context).dividerColor,
          ),
        ),
      ],
    );
  }
}
