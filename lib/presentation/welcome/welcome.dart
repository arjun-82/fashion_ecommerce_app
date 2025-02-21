import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: PaddingChart.allMedium,
          child: Column(
            children: [
              Spacing.largeHeight,
              const SizedBox(
                height: 450,
                child: Row(
                  children: [
                    Expanded(flex: 1, child: WelcomeCapsuleShapeContainer()),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: PaddingChart.allSmall,
                        child: Column(
                          children: [
                            WelcomeCapsuleContainerSmall(),
                            WelcomeCircularContainer(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Spacing.largeHeight,
              const WelcomeText(),
              Spacing.largeHeight,
              SizedBox(
                height: ButtonSize.fixedHeight,
                width: ButtonSize.fixedWidth,
                child: ElevatedButton(
                  child: const Text(
                    "Let's Get Started",
                  ),
                  onPressed: () {
                    Get.off(const FashionBottomNavBar(),
                        duration: const Duration(milliseconds: 900),
                        transition: Transition.downToUp);
                  },
                ),
              ),
              Spacing.mediumHeight,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account?",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(
                          duration: const Duration(milliseconds: 900),
                          transition: Transition.downToUp,
                          const SignInScreen());
                    },
                    child: const Text(
                      "SignIn",
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
