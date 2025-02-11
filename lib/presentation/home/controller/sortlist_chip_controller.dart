import 'package:get/get.dart';

class MultipleChipController extends GetxController {
  final List<dynamic> chipItems;
  final RxList<bool> selectedChips = <bool>[].obs;

  MultipleChipController({required this.chipItems}) {
    selectedChips.addAll(List.generate(chipItems.length, (index) => false));
  }

  void onChipTapped(int index) {
    selectedChips[index] = !selectedChips[index];
  }
}

class SingleChipController extends GetxController {
  final List<dynamic> chipItems;
  final RxInt selectedIndex = (-1).obs; // -1 means no chip selected initially

  SingleChipController({required this.chipItems});

  void onChipTapped(int index) {
    if (selectedIndex.value == index) {
      // If the same chip is tapped, unselect it
      selectedIndex.value = -1;
    } else {
      selectedIndex.value = index; // Select the new chip
    }
  }

  bool isSelected(int index) {
    return selectedIndex.value == index;
  }
}
