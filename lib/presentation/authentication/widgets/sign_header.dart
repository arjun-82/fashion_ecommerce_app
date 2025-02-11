import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class SignHeader extends StatelessWidget {
  final String title;
  final String description;
  final bool isSubDescription;
  final String? subDescription;

  const SignHeader({
    super.key,
    required this.title,
    required this.description,
    this.isSubDescription = false,
    this.subDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 90),
          Text(
            title,
            style: const TextStyle(
              fontFamily: Font.secondaryFont,
              fontSize: TextSize.px32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacing.mediumHeight,
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: TextSize.px20,
              color: Theme.of(context).hintColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (isSubDescription && subDescription != null)
            Text(
              subDescription!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: TextSize.px12,
                color: Theme.of(context).primaryColor,
              ),
            ),
        ],
      ),
    );
  }
}
