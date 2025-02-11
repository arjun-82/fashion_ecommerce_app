import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  final VoidCallback? onTap;
  const AppSearchBar({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
      height: ButtonSize.fixedHeight,
      child: SearchBar(
        hintText: "Search",
        // scrollPadding: PaddingChart.horizontalSmall,
        onTap: onTap,
        textInputAction: TextInputAction.done,
        hintStyle: WidgetStatePropertyAll(TextStyle(
            color: isDarkMode ? TLight.label : TLight.label,
            fontSize: TextSize.px14,
            decorationStyle: TextDecorationStyle.dotted)),
        elevation: const WidgetStatePropertyAll(1),
        leading: const Icon(HugeIcons.strokeRoundedSearch01),
        padding: const WidgetStatePropertyAll(PaddingChart.horizontalMedium),
        keyboardType: TextInputType.text,
        enabled: false,
        side: WidgetStatePropertyAll(
            BorderSide(color: isDarkMode ? TDark.primary : TLight.primary)),
      ),
    );
  }
}
