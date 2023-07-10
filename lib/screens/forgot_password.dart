import 'package:dlivry/routes/route_path.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import '../widgets/app_logo.dart';
import '../widgets/box_tile.dart';

import '../widgets/long_button.dart';
import '../widgets/subheader.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // final padding = MediaQuery.of(context).padding;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
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
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Subheader(
                      title: "Forgot Password",
                      subtitle:
                          "Select which contact details should we use to reset\n your password",
                    ),
                    SizedBox(height: 30),
                    BoxTile(
                      title: "Send OTP via SMS",
                      subtitle: "(406) 555-0120",
                      icon: FontAwesomeIcons.message,
                    ),
                    SizedBox(height: 10),
                    BoxTile(
                      title: "Send OTP via Email",
                      subtitle: "johnson@gmail.com",
                      icon: FontAwesomeIcons.envelope,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: LongButton(
                onpressed: () {
                  Navigator.pushNamed(context, RoutePath.enterotp);
                },
                alignment: Alignment.center,
                active: false,
                text: 'Continue',
                width: size.width * 0.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
