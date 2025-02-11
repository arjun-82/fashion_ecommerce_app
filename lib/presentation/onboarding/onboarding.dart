import 'package:fashion/config/index/index.dart';

import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            TextButton(
                onPressed: () {
                  Get.to(
                      duration: const Duration(milliseconds: 900),
                      transition: Transition.downToUp,
                      const FashionBottomNavBar());
                },
                child: const Text("Skip"))
          ],
        ),
        body: const Column(children: [OnboardDetails(), OnboardFooter()]));
  }
}
