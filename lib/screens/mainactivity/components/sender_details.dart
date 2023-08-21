import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dlivry/providers/constant_provider.dart';
import 'package:dlivry/routes/route_path.dart';

import 'package:dlivry/widgets/long_button.dart';
import 'package:dlivry/widgets/package_size.dart';
import 'package:dlivry/widgets/text_input.dart';
// import 'package:flutter/cupertino.dart';
import 'package:dlivry/widgets/subheader.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SenderDetails extends StatefulWidget {
  const SenderDetails({super.key, required this.onpressed});
  final VoidCallback onpressed;

  @override
  State<SenderDetails> createState() => _SenderDetailsState();
}

class _SenderDetailsState extends State<SenderDetails> {
  final TextEditingController typeController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    typeController.dispose();
    nameController.dispose();
    phoneController.dispose();
    addressController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ConstantProvider constant = Provider.of<ConstantProvider>(context);
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
          onpressed: () {
            DropdownMenu(
              onSelected: (value) {
                typeController.text = value!;
              },
              dropdownMenuEntries: const [
                DropdownMenuEntry(
                  value: "Express",
                  label: "Express",
                ),
                DropdownMenuEntry(
                  value: "Next Day",
                  label: "Next Day",
                ),
              ],
            );
          },
        ),
        const SizedBox(height: 25),
        DropdownButton(
          items: const [
            DropdownMenuItem(
              value: "Express",
              child: Text("Express"),
            ),
            DropdownMenuItem(
              value: "Next Day",
              child: Text("Next Day"),
            ),
            DropdownMenuItem(
              value: "Inter State",
              child: Text("Inter State"),
            ),
          ],
          onChanged: (value) {
            typeController.text = value!;
          },
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

        const SizedBox(height: 25),
        const Subheader(
          title: "Package Size",
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            PackageSize(
              onpressed: () {
                constant.selectContainer(0);
              },
              icon: FontAwesomeIcons.box,
              // Icons.archive,
              text: "< 1KG",
              selected: constant.firstContainer,
            ),
            const SizedBox(width: 15),
            PackageSize(
              onpressed: () {
                constant.selectContainer(1);
              },
              icon: FontAwesomeIcons.boxOpen,
              text: "3KG - 10KG",
              selected: constant.secondContainer,
            ),
            const SizedBox(width: 15),
            PackageSize(
              onpressed: () {
                constant.selectContainer(2);
              },
              icon: FontAwesomeIcons.boxesStacked,
              text: "> 10KG",
              selected: constant.thirdContainer,
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
        const SizedBox(height: 15),
        //TODO: Fix the expanding message
        /* TextInput(
          hint: "Enter Message",
         
        ), */

        const SizedBox(height: 50),
        Align(
          alignment: Alignment.bottomCenter,
          child: LongButton(
            onpressed: widget.onpressed,
            active: true, // TODO: Add the validation
            text: 'Next',
            width: size.width * 0.9,
          ),
        ),
      ],
    );
  }
}
