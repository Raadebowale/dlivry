import 'package:flutter/material.dart';

import 'package:dlivry/widgets/long_button.dart';
import 'package:dlivry/widgets/package_size.dart';
import 'package:dlivry/widgets/text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:dlivry/widgets/subheader.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReceiverDetails extends StatelessWidget {
  ReceiverDetails({
    super.key,
  });

  final TextEditingController typeController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // final padding = MediaQuery.of(context).padding;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Subheader(
          title: "Shipment Type",
        ),
        const SizedBox(height: 10),
        TextInput(
          hint: "Select Type",
          controller: typeController,
          onpressed: () {},
        ),
        const SizedBox(height: 25),
        const Subheader(
          title: "Sender Details",
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
          hint: "Enter Pickup Address",
          trailingIcon: FontAwesomeIcons.chevronRight,
        ),
        const SizedBox(height: 15),
        TextInput(
          hint: "Pick Date",
          onpressed: () {},
          trailingIcon: FontAwesomeIcons.calendar,
        ),
        const SizedBox(height: 15),
        TextInput(
          hint: "Pick Time",
          onpressed: () {},
          trailingIcon: FontAwesomeIcons.clock,
        ),
        const SizedBox(height: 15),
        TextInput(
          hint: "Select Consignment Type",
          onpressed: () {},
        ),
        const SizedBox(height: 25),
        const Subheader(
          title: "Package Size",
        ),
        const SizedBox(height: 10),
        const Row(
          children: [
            PackageSize(
              icon: CupertinoIcons.cube_box_fill,
              text: "< 1KG",
              index: 0,
            ),
            SizedBox(width: 15),
            PackageSize(
              icon: FontAwesomeIcons.boxOpen,
              text: "3KG - 10KG",
              index: 1,
            ),
            SizedBox(width: 15),
            PackageSize(
              icon: FontAwesomeIcons.boxesStacked,
              text: "> 10KG",
              index: 2,
            ),
          ],
        ),
        const SizedBox(height: 25),
        const Subheader(
          title: "Delivery Type",
        ),
        const SizedBox(height: 10),
        TextInput(
          hint: "Select Delivery Type",
          onpressed: () {},
        ),
        const SizedBox(height: 10),
        /* TextInput(
          hint: "Enter Message",
         
        ), */

        const SizedBox(height: 50),
        Align(
          alignment: Alignment.bottomCenter,
          child: LongButton(
            onpressed: () {},
            active: false,
            text: 'Next',
            width: size.width * 0.9,
          ),
        ),
      ],
    );
  }
}
