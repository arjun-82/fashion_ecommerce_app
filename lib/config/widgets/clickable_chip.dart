import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class ClickableChips extends StatelessWidget {
  final List<dynamic> chipLabels;
  final OutlinedBorder? border;
  final dynamic controller; // Accept either controller

  const ClickableChips(
      {super.key,
      required this.chipLabels,
      required this.controller,
      this.border});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Wrap(
        spacing: 1.0,
        runSpacing: 2.0,
        children: List.generate(
          chipLabels.length,
          (index) => _buildChip(context, index),
        ),
      ),
    );
  }

  Widget _buildChip(BuildContext context, int index) {
    if (controller is MultipleChipController) {
      return GestureDetector(
        onTap: () => (controller as MultipleChipController).onChipTapped(index),
        child: Chip(
          label: Text(chipLabels[index].toString()), // Handle display of data
          side: BorderSide.none,
          shape: border ??
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor:
              (controller as MultipleChipController).selectedChips[index]
                  ? MainPalette.secondary
                  : MainPalette.tertiary,
          labelStyle: const TextStyle(color: Colors.black),
        ),
      );
    } else if (controller is SingleChipController) {
      return GestureDetector(
        onTap: () => (controller as SingleChipController).onChipTapped(index),
        child: Chip(
          label: Text(chipLabels[index].toString()), // Handle display of data
          side: BorderSide.none,
          shape: border ??
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: Theme.of(context).brightness == Brightness.dark
              ? (controller as SingleChipController).isSelected(index)
                  ? MainPalette.primary
                  : MainPalette.secondary
              : (controller as SingleChipController).isSelected(index)
                  ? MainPalette.primary
                  : MainPalette.tertiary,
          // labelStyle: TextStyle(color: TDark.primary),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
