import 'package:dlivry/utils/app_colors.dart';
import 'package:dlivry/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/app_logo.dart';
import '../widgets/login_option.dart';
import '../widgets/long_button.dart';
import '../widgets/subheader.dart';
import '../widgets/text_input.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: padding.top * 2,
          right: 15,
          left: 15,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppLogo(size: 70),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Subheader(
                      title: "Let's get you Login!",
                      subtitle: "Enter your information below",
                    ),
                    const SizedBox(height: 30),
                    const TextInput(
                      hint: "Enter Email",
                      icon: FontAwesomeIcons.envelope,
                    ),
                    const SizedBox(height: 20),
                    const TextInput(
                      hint: "Enter Password",
                      password: true,
                      icon: FontAwesomeIcons.lock,
                    ),
                    const SizedBox(height: 15),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
                    Center(
                      child: LongButton(
                        onpressed: () {},
                        alignment: Alignment.center,
                        active: false,
                        text: 'Login',
                        width: size.width * 0.8,
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1.5,
                            color: AppColors.lightText,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Or login with",
                          style: TextStyle(
                            color: AppColors.textBlack,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Divider(
                            thickness: 1.5,
                            color: AppColors.lightText,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        LoginOption(
                          onpressed: () {},
                          image: AppImages.googleLogo,
                          text: "Google",
                        ),
                        const SizedBox(width: 15),
                        LoginOption(
                          onpressed: () {},
                          image: AppImages.fbLogo,
                          text: "Facebook",
                        ),
                      ],
                    ),
                    const SizedBox(height: 120),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Not our member yet?",
                          style: TextStyle(
                            color: AppColors.textBlack,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Register Now",
                            style: TextStyle(
                              color: AppColors.primary,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
