import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SignHeader(
                title: "SignUp",
                description: "Welcome! Create your account to get started."),
            Expanded(
                flex: 5,
                child: SingleChildScrollView(
                  padding: PaddingChart.horizontalMedium,
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      const SignUpFormField(),
                      Spacing.largeHeight,
                      SizedBox(
                          height: ButtonSize.fixedHeight,
                          width: ButtonSize.fixedWidth,
                          child: ElevatedButton(
                              onPressed: () {
                                Get.to(
                                    duration: const Duration(milliseconds: 800),
                                    transition: Transition.downToUp,
                                    const OtpVerificationScreen());
                              },
                              child: const Text("Sign Up"))),
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
                            "Already have an Account?",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignInScreen(),
                                  ));
                            },
                            child: const Text(
                              "SignIn",
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
