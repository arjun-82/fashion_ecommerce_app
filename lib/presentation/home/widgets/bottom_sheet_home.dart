import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class FilterSheetHome extends StatelessWidget {
  const FilterSheetHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final singleSelectController = Get.put(SingleChipController(
      chipItems: price,
    ));
    final singleSelectController2 = Get.put(SingleChipController(
      chipItems: sortList,
    ));
    return Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        padding: PaddingChart.allMedium,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Short by",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Spacing.mediumHeight,
              ClickableChips(
                  controller: singleSelectController, chipLabels: price),
              Spacing.largeHeight,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Short by Price",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Spacing.mediumHeight,
              ClickableChips(
                  controller: singleSelectController2, chipLabels: sortList),
            ],
          ),
        ));
  }
}

final List<String> sortList = [
  'Popular',
  'Newest',
  'Oldest',
  'High Price',
  'Low Price',
  'Review',
  'Rating',
];

final List price = [
  "below 500",
  "500 - 1000",
  "1000 - 2000",
  "2000 - 5000",
  "above 5000"
];
