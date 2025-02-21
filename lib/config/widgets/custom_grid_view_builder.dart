import 'package:fashion/config/index/index.dart';

class CustomGridViewBuilder extends StatelessWidget {
  final double height;
  final int itemCount;
  final NullableIndexedWidgetBuilder itemBuilder;
  final Axis? scrollDirection;
  final int? axisCount;

  const CustomGridViewBuilder({
    super.key,
    required this.height,
    required this.itemBuilder,
    required this.itemCount,
    this.scrollDirection,
    this.axisCount,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: axisCount ?? 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: Spacing.small,
        mainAxisSpacing: Spacing.small,
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
