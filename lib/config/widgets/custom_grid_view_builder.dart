import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class CustomGridViewBuilder extends StatelessWidget {
  final double height;
  final int itemCount;
  final NullableIndexedWidgetBuilder itemBuilder;
  final bool? isStaggered;
  final Axis? scrollDirection;
  final int? axisCount;

  const CustomGridViewBuilder({
    super.key,
    required this.height,
    required this.itemBuilder,
    required this.itemCount,
    this.isStaggered,
    this.scrollDirection,
    this.axisCount,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: axisCount ?? 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: Spacing.medium,
        mainAxisSpacing: Spacing.medium,
        mainAxisExtent: height,
      ),
      scrollDirection: scrollDirection ?? Axis.vertical,
      shrinkWrap: true,
      padding: PaddingChart.horizontalSmall,
      itemCount: itemCount,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: itemBuilder,
    );
  }
}
