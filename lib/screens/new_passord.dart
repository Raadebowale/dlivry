import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/long_button.dart';
import '../widgets/subheader.dart';
import '../widgets/text_input.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
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
                      title: "Enter New Password",
                      subtitle: "Please enter new password",
                    ),
                    const SizedBox(height: 30),
                    TextInput(
                      hint: "Enter New Password",
                      password: true,
                      icon: FontAwesomeIcons.lock,
                    ),
                    const SizedBox(height: 20),
                    TextInput(
                      hint: "Re-Enter Password",
                      password: true,
                      icon: FontAwesomeIcons.lock,
                    ),
                    
                   
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: LongButton(
                onpressed: () {
                  
                },
                alignment: Alignment.center,
                active: false,
                text: 'Save',
                width: size.width * 0.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
