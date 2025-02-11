import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class SignUpFormField extends StatelessWidget {
  const SignUpFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final visibleController = Get.put(ToggleController());
    return Form(
      child: Column(
        children: [
          const LeftAlignText(
            text: 'Name',
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Name',
            ),
          ),
          Spacing.mediumHeight,
          const LeftAlignText(
            text: 'Email',
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Email',
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          Spacing.mediumHeight,
          const LeftAlignText(
            text: 'Password',
          ),
          Obx(
            () => TextFormField(
              obscureText: visibleController.isToggle.value,
              decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        visibleController.toggleIcon();
                      },
                      icon: visibleController.isToggle.value
                          ? const Icon(HugeIcons.strokeRoundedCirclePassword)
                          : const Icon(HugeIcons.strokeRoundedEye))),
            ),
          ),
          Spacing.mediumHeight,
          const ConditionCheck(),
        ],
      ),
    );
  }
}
