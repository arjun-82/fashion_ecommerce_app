import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SignHeader(
                title: 'Sign In',
                description: 'Welcome back, sign in to continue.'),
            Expanded(
                flex: 4,
                child: SingleChildScrollView(
                  padding: PaddingChart.horizontalMedium,
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      const SignInFormField(),
                      Spacing.mediumHeight,
                      Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              Get.to(
                                  duration: const Duration(milliseconds: 900),
                                  transition: Transition.downToUp,
                                  const RestPasswordScreen());
                            },
                            child: const Text(ButtonString.forgotPassword),
                          )),
                      Spacing.largeHeight,
                      SizedBox(
                          height: ButtonSize.fixedHeight,
                          width: ButtonSize.fixedWidth,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(ButtonString.signin))),
                      Spacing.largeHeight,
                      const TextDivider(
                        text: 'Or Sign In With',
                      ),
                      Spacing.largeHeight,
                      const SocialLabelBar(),
                      Spacing.largeHeight,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            ConstStrings.dontHaveAccount,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(
                                  duration: const Duration(milliseconds: 800),
                                  transition: Transition.downToUp,
                                  const SignUpScreen());
                            },
                            child: const Text(
                              "SignUp",
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
