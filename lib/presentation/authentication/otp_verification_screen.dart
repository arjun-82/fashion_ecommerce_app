import 'package:fashion/config/index/index.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field_style.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SignHeader(
              title: "OTP Verification",
              description: "Please enter the code we send on your mail",
              isSubDescription: true,
              subDescription: "example@gamil.com",
            ),
            Expanded(
                flex: 4 ,
                child: SingleChildScrollView(
                  padding: PaddingChart.horizontalMedium,
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OTPTextField(
                        length: 5,
                        width: MediaQuery.of(context).size.width,
                        keyboardType: TextInputType.number,
                        outlineBorderRadius: ButtonSize.fixedRadius,
                        fieldWidth: 70,
                        style: TextStyle(
                          fontSize: TextSize.px16,
                          fontFamily: Font.primaryFont,
                          color: isDark
                              ? MainPalette.tertiary
                              : MainPalette.secondary,
                        ),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.box,
                        otpFieldStyle: OtpFieldStyle(
                          borderColor: isDark
                              ? MainPalette.secondary
                              : MainPalette.tertiary,
                          backgroundColor: isDark
                              ? MainPalette.secondary
                              : MainPalette.tertiary,
                        ),
                        onCompleted: (pin) {
                          if (kDebugMode) {
                            print("Completed: " + pin);
                          }
                        },
                      ),
                      Spacing.largeHeight,
                      const Text("Don't recive OTP?"),
                      TextButton(
                          onPressed: () {},
                          child: const Text("Resend Otp Code")),
                      Spacing.largeHeight,
                      SizedBox(
                          height: ButtonSize.fixedHeight,
                          width: ButtonSize.fixedWidth,
                          child: ElevatedButton(
                              onPressed: () {
                                Get.to(
                                    duration: const Duration(milliseconds: 800),
                                    transition: Transition.downToUp,
                                    const SignUpScreen());
                              },
                              child: const Text("Verify"))),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
