
import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class LeftAlignText extends StatelessWidget {
  final String text;
  const LeftAlignText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style:const TextStyle(
          fontSize: TextSize.px16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
