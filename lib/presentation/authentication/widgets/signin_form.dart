import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class SignInFormField extends StatelessWidget {
  const SignInFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final visibleController = Get.put(ToggleController());
    return Form(
      child: Column(
        children: [
          const LeftAlignText(
            text: 'Email',
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Email',
            ),
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
        ],
      ),
    );
  }
}
