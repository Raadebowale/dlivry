import 'package:dlivry/utils/validator.dart';
import 'package:flutter/material.dart';

import 'package:dlivry/providers/auth_provider.dart';
import 'package:dlivry/routes/route_path.dart';
import 'package:dlivry/utils/app_colors.dart';

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
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
  }

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
                child: Form(
                  key: formKey,
                  onChanged: () {},

                  // autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Subheader(
                        title: "Register your new account!",
                        subtitle: "Enter your information below",
                      ),
                      const SizedBox(height: 25),
                      TextInput(
                        validator: Validator.validateName,
                        controller: nameController,
                        hint: "Enter FullName",
                      ),
                      const SizedBox(height: 25),
                      TextInput(
                        validator: Validator.validateEmail,
                        controller: emailController,
                        hint: "Enter Email Address",
                      ),
                      const SizedBox(height: 25),
                      TextInput(
                        validator: Validator.validatePhone,
                        controller: phoneController,
                        hint: "Enter Phone Number",
                        number: true,
                      ),
                      const SizedBox(height: 25),
                      TextInput(
                        validator: Validator.validatePassword,
                        controller: passwordController,
                        hint: "Enter Password",
                        password: true,
                        icon: FontAwesomeIcons.lock,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // if (formKey.currentState!.validate())
            // validated = true,
            Consumer<AuthProvider>(
              builder: (context, provider, child) => LongButton(
                onpressed: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  if (!formKey.currentState!.validate()) {
                    return;
                  }
                  provider.createAccount(
                    context,
                    fullName: nameController.text.trim(),
                    email: emailController.text.trim(),
                    phone: phoneController.text.trim(),
                    password: passwordController.text.trim(),
                  );
                },
                active: provider.buttonActive ? true : provider.isActive,
                text: 'Register',
                width: size.width * 0.8,
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
                    Navigator.pushNamedAndRemoveUntil(
                        context, RoutePath.login, (route) => false);
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
