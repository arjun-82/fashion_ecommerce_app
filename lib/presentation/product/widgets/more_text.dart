import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class MoreText extends StatelessWidget {
  final String text;
  const MoreText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimMode: TrimMode.Line,
      trimLines: 2,
      style: Theme.of(context).textTheme.labelLarge,
      colorClickableText: Colors.blue,
      trimCollapsedText: 'Show more',
      trimExpandedText: 'Show less',
      isExpandable: true,
      textAlign: TextAlign.left,
      lessStyle: const TextStyle(
          fontSize: TextSize.px12,
          color: Colors.blue,
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue,
          fontWeight: FontWeight.bold),
      moreStyle: const TextStyle(
          fontSize: TextSize.px12,
          decoration: TextDecoration.underline,
          decorationColor: Colors.blue,
          color: Colors.blue,
          fontWeight: FontWeight.bold),
    );
  }
}
