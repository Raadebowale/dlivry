import 'package:dlivry/routes/route_path.dart';
import 'package:flutter/material.dart';

import 'package:pinput/pinput.dart';

import '../utils/app_colors.dart';

import '../widgets/long_button.dart';
import '../widgets/subheader.dart';

class EnterOtp extends StatefulWidget {
  const EnterOtp({super.key});

  @override
  State<EnterOtp> createState() => _EnterOtpState();
}

class _EnterOtpState extends State<EnterOtp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          // top: padding.top * 2,
          right: 15,
          left: 15,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const AppLogo(size: 70),
            // const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Subheader(
                      title: "Enter OTP Code",
                      subtitle: "OTP code has been sent to (406) 555-0120",
                    ),
                    const SizedBox(height: 30),
                    const Center(
                      child: Pinput(
                        autofocus: true,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "Resend Code",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: AppColors.lightText,
                          ),
                        ),
                        const SizedBox(width: 5),
                        GestureDetector(
                          child: const Text(
                            "00:52s",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: LongButton(
                onpressed: () {
                  Navigator.pushNamed(context, RoutePath.newpassword);
                },
                alignment: Alignment.center,
                active: false,
                text: 'Verify',
                width: size.width * 0.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
