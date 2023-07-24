import 'package:dlivry/routes/route_path.dart';
import 'package:flutter/material.dart';

import 'package:dlivry/widgets/long_button.dart';
import 'package:dlivry/widgets/package_size.dart';
import 'package:dlivry/widgets/text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:dlivry/widgets/subheader.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SenderDetails extends StatefulWidget {
  const SenderDetails({super.key});

  @override
  State<SenderDetails> createState() => _SenderDetailsState();
}

class _SenderDetailsState extends State<SenderDetails> {
  final TextEditingController typeController = TextEditingController();

  final TextEditingController nameController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController addressController = TextEditingController();

  int selectedContainer = 0;

  void selectContainer(int index) {
    setState(() {
      // selected = active;
      selectedContainer = index;
    });
  }

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
          onpressed: () {
            Navigator.pushNamed(context, RoutePath.pickup);
          },
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
        Row(
          children: [
            PackageSize(
              // onpressed: selectContainer(0),
              icon: FontAwesomeIcons.box,
              // Icons.archive,
              text: "< 1KG",
              index: 0,
            ),
            const SizedBox(width: 15),
            PackageSize(
              onpressed: (selectedContainer) => {
                setState(() {
                  // selectContainer(widget.index);
                  // index = 1;
                  selectedContainer = 1;
                })
              },
              icon: FontAwesomeIcons.boxOpen,
              text: "3KG - 10KG",
              index: 1,
            ),
            const SizedBox(width: 15),
            PackageSize(
              onpressed: (selectedContainer) => {
                setState(() {
                  // selectContainer(widget.index);
                  // index = 2;
                  selectedContainer = 2;
                })
              },
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
