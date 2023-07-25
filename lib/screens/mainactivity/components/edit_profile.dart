import 'package:dlivry/utils/validator.dart';
import 'package:dlivry/widgets/text_input.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:dlivry/widgets/long_button.dart';
import 'package:dlivry/utils/app_colors.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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

    // final padding = MediaQuery.of(context).padding;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Profile",
          style: TextStyle(
            color: AppColors.textBlack,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Stack(
                children: [
                  ClipRect(
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Image.asset(
                        "assets/images/person.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -1,
                    right: -2,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.5,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  right: 15,
                  left: 15,
                  bottom: 20,
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.bottomCenter,
            child: LongButton(
              onpressed: () {},
              // active: false,
              text: 'Update',
              width: size.width * 0.8,
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
