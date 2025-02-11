import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class DropDownWidgets extends StatelessWidget {
  final String title;
  final Widget child;
  DropDownWidgets({super.key, required this.title, required this.child});
  final ExpandedController controller = Get.put(ExpandedController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                border: Border.symmetric(
                    horizontal: BorderSide(
              color: Color.fromARGB(255, 203, 197, 197),
            ))),
            child: HeadLineWidget(
              title: title,
              isTrailingDefault: false,
              isPadding: false,
              isStyle: true,
              textstyle: Theme.of(context).textTheme.bodyLarge,
              child: IconButton(
                onPressed: () {
                  controller.toggleExpanded();
                },
                icon: Icon(
                  controller.isExpanded
                      ? HugeIcons.strokeRoundedArrowUp01
                      : HugeIcons.strokeRoundedArrowDown01,
                ),
              ),
            ),
          ),
          Spacing.smallHeight,
          controller.isExpanded ? child : const SizedBox(),
          Spacing.smallHeight,
        ],
      ),
    );
  }
}
