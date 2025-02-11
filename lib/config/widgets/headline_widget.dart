import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class HeadLineWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final bool isTrailingDefault,isStyle ,isPadding;
  final TextStyle? textstyle;
  final Widget? child;
  const HeadLineWidget({
    super.key,
    required this.title,
    this.onPressed,
    required this.isTrailingDefault,
    this.textstyle,
    required this.isStyle,
    this.child, 
    required this.isPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:isPadding ? PaddingChart.allSmall : EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style:
                isStyle ? textstyle : Theme.of(context).textTheme.headlineSmall,
          ),
          isTrailingDefault
              ? TextButton(
                  onPressed: onPressed,
                  child: const Text(
                    "Show All",
                  ),
                )
              : child ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
