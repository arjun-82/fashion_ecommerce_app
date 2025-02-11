import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class CustomMasonryGridView extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;
  const CustomMasonryGridView({
    super.key, required this.itemBuilder, required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      physics: const NeverScrollableScrollPhysics(),
      padding: PaddingChart.allXSmall,
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
