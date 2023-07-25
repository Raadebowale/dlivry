import 'package:dlivry/screens/mainactivity/components/receiver_details.dart';
import 'package:flutter/material.dart';

import 'package:dlivry/utils/app_colors.dart';
import 'package:dlivry/screens/mainactivity/components/sender_details.dart';

class SendPackage extends StatefulWidget {
  const SendPackage({super.key});

  @override
  State<SendPackage> createState() => _SendPackageState();
}

class _SendPackageState extends State<SendPackage> {
  TextEditingController typeController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      SenderDetails(
        onpressed: () {
          setState(() {
            currentPage = 1;
          });
        },
      ),
      ReceiverDetails(
        onpressed: () {},
      ),
    ];
    // Size size = MediaQuery.of(context).size;
    // final padding = MediaQuery.of(context).padding;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        title: const Text(
          "Send Package",
          style: TextStyle(
            color: AppColors.textBlack,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          right: 15,
          left: 15,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: RawScrollbar(
                child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: pages[currentPage],
                ),
              ),
            ),
            /* const SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomCenter,
              child: LongButton(
                onpressed: () {},
                active: false,
                text: 'Next',
                width: size.width * 0.8,
              ),
            ), */
          ],
        ),
      ),
    );
  }
}
