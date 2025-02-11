// slide Controller

import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class SliderController extends GetxController {
  static SliderController get instance => Get.find();
  final sliderCurrentIndex = 0.obs;
  // final sliderCarouselController = CarouselSliderController();

  void updateBgIndex(int index) {
    sliderCurrentIndex.value = index;
  }
  void updateNextPage(List<Widget> sliderItems) {
    if (sliderCurrentIndex.value < sliderItems.length - 1) {
      sliderCurrentIndex.value++;
    } else {
      Get.to(
          duration: const Duration(milliseconds: 900),
          transition: Transition.downToUp,
          const FashionBottomNavBar()); // Navigate to the next screen
    }
  }
}
