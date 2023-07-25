import 'package:flutter/material.dart';

import 'package:dlivry/widgets/long_button.dart';
import 'package:dlivry/widgets/text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:dlivry/widgets/subheader.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReceiverDetails extends StatelessWidget {
  ReceiverDetails({
    super.key,
    required this.onpressed,
  });
  final VoidCallback onpressed;

  final TextEditingController typeController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // final padding = MediaQuery.of(context).padding;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Subheader(
          title: "Receiver Details",
        ),
        const SizedBox(height: 10),
        TextInput(
          controller: nameController,
          hint: "Enter Name",
        ),
        const SizedBox(height: 15),
        TextInput(
          controller: phoneController,
          hint: "Enter Mobile Number",
          number: true,
        ),
        const SizedBox(height: 15),
        TextInput(
          onpressed: () {},
          controller: addressController,
          hint: "Enter Delivery Address",
          trailingIcon: FontAwesomeIcons.chevronRight,
        ),
        const SizedBox(height: 15),
        //TODO: Fix the expanding message

        /* TextInput(
          hint: "Enter Message",
         
        ), */

        const SizedBox(height: 50),

        // const Spacer(),
        Align(
          alignment: Alignment.bottomCenter,
          child: LongButton(
            onpressed: onpressed,
            active: false,
            text: 'Book Now',
            width: size.width * 0.9,
          ),
        ),
      ],
    );
  }
}
