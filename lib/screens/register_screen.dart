import 'package:dlivry/models/user_model.dart';
import 'package:dlivry/providers/auth_provider.dart';
import 'package:dlivry/routes/route_path.dart';
import 'package:dlivry/utils/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../widgets/app_logo.dart';

import '../widgets/long_button.dart';
import '../widgets/subheader.dart';
import '../widgets/text_input.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                      title: "Register your new account!",
                      subtitle: "Enter your information below",
                    ),
                    const SizedBox(height: 30),
                    TextInput(
                      controller: nameController,
                      hint: "Enter FullName",
                    ),
                    const SizedBox(height: 15),
                    TextInput(
                      controller: emailController,
                      hint: "Enter Email Address",
                    ),
                    const SizedBox(height: 15),
                    TextInput(
                      controller: phoneController,
                      hint: "Enter Phone Number",
                    ),
                    const SizedBox(height: 15),
                    TextInput(
                      hint: "Select Country",
                    ),
                    const SizedBox(height: 15),
                    TextInput(
                      hint: "Select State",
                    ),
                    const SizedBox(height: 15),
                    TextInput(
                      controller: addressController,
                      hint: "Enter Address",
                    ),
                    const SizedBox(height: 15),
                    TextInput(
                      controller: passwordController,
                      hint: "Enter Password",
                      password: true,
                      icon: FontAwesomeIcons.lock,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Consumer<AuthProvider>(
              builder: (context, provider, child) => Center(
                child: LongButton(
                  onpressed: () {
                    provider.createAccount(
                      context,
                      fullName: nameController.text.trim(),
                      email: emailController.text.trim(),
                      phone: phoneController.text.trim(),
                      address: addressController.text.trim(),
                      password: passwordController.text.trim(),
                    );
                  },
                  alignment: Alignment.center,
                  active: false,
                  text: 'Register',
                  width: size.width * 0.8,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "Already a member?",
                  style: TextStyle(
                    color: AppColors.textBlack,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, RoutePath.login);
                  },
                  child: const Text(
                    "Login",
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
    );
  }
}
