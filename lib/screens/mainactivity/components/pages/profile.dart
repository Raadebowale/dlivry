import 'package:flutter/material.dart';
import 'package:dlivry/providers/auth_provider.dart';
import 'package:dlivry/routes/route_path.dart';

import 'package:dlivry/widgets/custom_tile.dart';
import 'package:dlivry/widgets/long_button.dart';
import 'package:dlivry/utils/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    AuthProvider auth = Provider.of<AuthProvider>(context);

    final currentUser = auth.userSignedIn!;
    Size size = MediaQuery.of(context).size;

    // final padding = MediaQuery.of(context).padding;
    return Scaffold(
      appBar: AppBar(
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
              const SizedBox(height: 10),
              Text(
                currentUser.fullName,
                style: const TextStyle(
                  color: AppColors.textBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                currentUser.email,
                style: const TextStyle(
                  color: AppColors.smallgreyText,
                  fontSize: 14,
                ),
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
                child: Column(
                  children: [
                    const Divider(),
                    CustomTile(
                      onpressed: () {
                        Navigator.pushNamed(context, RoutePath.editprofile);
                      },
                      title: "Edit Profile",
                      prefixIcon: FontAwesomeIcons.penToSquare,
                    ),
                    /* const Divider(),
                    const SizedBox(height: 5),
                    CustomTile(
                      onpressed: () {},
                      title: "My Address",
                      prefixIcon: FontAwesomeIcons.locationPin,
                    ), */
                    const Divider(),
                    const SizedBox(height: 5),
                    CustomTile(
                      onpressed: () {},
                      title: "My Order",
                      prefixIcon: FontAwesomeIcons.cube,
                    ),
                    const Divider(),
                    const SizedBox(height: 5),
                    CustomTile(
                      onpressed: () {},
                      title: "Change Password",
                      prefixIcon: FontAwesomeIcons.lock,
                    ),
                    const Divider(),
                    const SizedBox(height: 5),
                    CustomTile(
                      onpressed: () {},
                      title: "Privacy Policy",
                      prefixIcon: FontAwesomeIcons.shield,
                    ),
                    const Divider(),
                    const SizedBox(height: 5),
                    CustomTile(
                      onpressed: () {},
                      title: "Terms & Condition",
                      prefixIcon: FontAwesomeIcons.list,
                    ),
                    const Divider(),
                    // const SizedBox(height: 8),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: LongButton(
                        onpressed: () {},
                        // active: false,
                        text: 'Logout',
                        icon: Icons.keyboard_double_arrow_right_rounded,
                        width: size.width * 0.8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          /* const SizedBox(height: 10),
          Align(
            alignment: Alignment.bottomCenter,
            child: LongButton(
              onpressed: () {},
              // active: false,
              text: 'Logout',
              width: size.width * 0.8,
            ),
          ), */
        ],
      ),
    );
  }
}
