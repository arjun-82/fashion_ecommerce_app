import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class ConditionCheck extends StatelessWidget {
  const ConditionCheck({super.key});
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final controller = Get.put(CheckboxController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Obx(
          () => Checkbox(
            fillColor: WidgetStatePropertyAll(
              isDark ? MainPalette.secondary : MainPalette.tertiary,
            ),
            checkColor: isDark ? MainPalette.tertiary : MainPalette.secondary,
            value: controller.isChecked.value, 
            onChanged: (bool? newValue) {
              controller.toggleCheckbox();
            },
          ),
        ),
        const Text(
          "Agree with",
          style:
              TextStyle(fontSize: TextSize.px14, fontWeight: FontWeight.w600),
        ),
        TextButton(
          onPressed: () {},
          child: const Text("Terms & Conditions"),
        ),
      ],
    );
  }
}
