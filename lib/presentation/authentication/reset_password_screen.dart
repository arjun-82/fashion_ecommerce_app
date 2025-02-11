import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';

class RestPasswordScreen extends StatelessWidget {
  const RestPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SignHeader(
              isSubDescription: true,
              title: 'Reset Password',
              description: "No worries we'll send you reset instructions",
              subDescription: "example@gmail.com",
            ),
            Expanded(
                flex: 5,
                child: SingleChildScrollView(
                  padding: PaddingChart.horizontalMedium,
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Spacing.largeHeight,
                      Spacing.mediumHeight,
                      const LeftAlignText(
                        text: 'Email',
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'example@demo.com',
                        ),
                      ),
                      Spacing.largeHeight,
                      Spacing.mediumHeight,
                      Spacing.largeHeight,
                      SizedBox(
                          height: ButtonSize.fixedHeight,
                          width: ButtonSize.fixedWidth,
                          child: ElevatedButton(
                              onPressed: () {}, child: const Text("Continue"))),
                      Spacing.largeHeight,
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
