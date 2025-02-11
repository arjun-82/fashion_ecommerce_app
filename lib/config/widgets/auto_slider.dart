import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class CardSlider extends StatelessWidget {
  final List<Widget> card;
  final Function(int index, CarouselPageChangedReason reason)? onPageChanged;
  final bool? autoSlider;
  final double? height;

  const CardSlider({
    super.key,
    required this.card,
    this.onPageChanged,
    this.autoSlider,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SliderController());
    return CarouselSlider(
      items:card,
      carouselController: CarouselSliderController(),
      options: CarouselOptions(
        height: height ?? 190,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        autoPlay: autoSlider ?? true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 2000),
        autoPlayCurve: Curves.fastOutSlowIn,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index, reason) {
          if (onPageChanged != null) {
            onPageChanged!(index, reason);
          }
          if (autoSlider == false) {
            controller.updateNextPage(card);
          }
          controller.updateBgIndex(index);
        },
      ),
    );
  }
}
