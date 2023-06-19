import 'package:dlivry/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../widgets/app_logo.dart';
import '../widgets/long_button.dart';
import '../widgets/text_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: padding.top * 3,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppLogo(size: 80),
            // const SizedBox(height: 10),
            const Text(
              "Let's get you Login!",
              style: TextStyle(
                color: AppColors.textBlack,
                fontSize: 23,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Enter your information below",
              style: TextStyle(
                color: AppColors.smallgreyText,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 20),
            /* const TextInput(
              hint: "Enter Email",
            ), */
            const SizedBox(height: 10),
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
            const SizedBox(height: 20),
            LongButton(
              onpressed: () {},
              active: false,
              text: 'Login',
              width: size.width * 0.8,
            ),
            const SizedBox(height: 15),
            Expanded(
              child: Row(
                children: const [
                  Divider(),
                  SizedBox(width: 5),
                  Text(
                    "Or login with",
                    style: TextStyle(
                      color: AppColors.textBlack,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(width: 5),
                  Divider(),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.smallgreyText,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ListTile(
                      leading: Image.asset("name"),
                      title: const Text(
                        "Google",
                        style: TextStyle(
                          color: AppColors.textBlack,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                ],
              ),
            ),
            // const Spacer(),
            Expanded(
              child: Row(
                children: [
                  const Text(
                    "Not our member yet?",
                    style: TextStyle(
                      color: AppColors.textBlack,
                      fontSize: 12,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Register Now",
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
