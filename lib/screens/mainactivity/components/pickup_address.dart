import 'package:dlivry/routes/route_path.dart';
import 'package:dlivry/widgets/long_button.dart';
import 'package:dlivry/widgets/text_input.dart';
import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';

import 'package:dlivry/utils/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PickupAddress extends StatefulWidget {
  const PickupAddress({super.key});

  @override
  State<PickupAddress> createState() => _PickupAddressState();
}

class _PickupAddressState extends State<PickupAddress> {
  /* Future<Position> _getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request');
    }
  } */

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: size.height * 0.45,
                decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20.0),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: size.width * 0.7,
                  margin: EdgeInsets.only(
                    top: padding.top * 2,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.magnifyingGlass,
                        color: AppColors.primary,
                        size: 18,
                      ),
                      SizedBox(width: 7),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Pickup Location",
                            hintStyle: TextStyle(
                              color: AppColors.lightText,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(width: 3),
                      FaIcon(
                        FontAwesomeIcons.circleXmark,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Center(
                      child: FaIcon(
                        FontAwesomeIcons.locationCrosshairs,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  top: padding.top * 1.2,
                  left: 15,
                  right: 15,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const TextInput(hint: "Apt./Building(Optional)"),
                    const SizedBox(height: 15),
                    const TextInput(hint: "Landmark(Optional)"),
                    const SizedBox(height: 25),
                    LongButton(
                      onpressed: () {
                        Navigator.pop(context);
                        // pushNamed(context, RoutePath.sendpackage);
                      },
                      width: size.width * 0.8,
                      text: "Confirm Pickup Address",
                    ),
                    // const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
