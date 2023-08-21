import 'package:dlivry/providers/auth_provider.dart';
import 'package:dlivry/utils/app_colors.dart';
// import 'package:dlivry/providers/db_provider.dart';
// import 'package:dlivry/widgets/package_info.dart';
import 'package:dlivry/widgets/subheader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../../widgets/delivery_info.dart';
import '../../../../widgets/service_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    AuthProvider auth = Provider.of<AuthProvider>(context);
    // DbProvider db = Provider.of<DbProvider>(context);
    final firstName = auth.userSignedIn!.fullName.split(' ')[0];
    // Size size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: padding.top * 1.2,
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: AppColors.disabled,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: FaIcon(
                      FontAwesomeIcons.locationPin,
                      color: AppColors.primary,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /* Text(
                      'Your Location',
                      style: const TextStyle(
                        fontSize: 13,
                        color: AppColors.textBlack,
                      ),
                    ), */

                    _getDayWidget(),
                    const SizedBox(height: 2),
                    Text(
                      'Hello, ${_capitalizeFirstLetter(firstName)}!',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: AppColors.textBlack,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColors.disabled,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/person.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
              child: RawScrollbar(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: AppColors.lightBg,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Track your package',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Please enter your tracking number',
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 18),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Row(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      // crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 10),
                                        Icon(CupertinoIcons.cube_box),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: TextField(
                                            decoration: InputDecoration(
                                              // prefixIcon: FaIcon(FontAwesomeIcons.boxArchive),
                                              hintText: "Tracking Number",
                                              hintStyle: TextStyle(
                                                  color: AppColors.lightText),
                                              border: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: FaIcon(
                                      FontAwesomeIcons.qrcode,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      // Our Service
                      const Subheader(title: "Our Service"),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: ServiceContainer(
                              onpressed: () {},
                              title: 'Courier',
                              icon: FontAwesomeIcons.truckFast,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: ServiceContainer(
                              onpressed: () {},
                              title: 'Tracking',
                              icon: FontAwesomeIcons.mapLocationDot,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),

                      // Recent Deliveries
                      Subheader(
                        title: "Recent Deliveries",
                        onpressed: () {},
                      ),
                      const SizedBox(height: 10),

                      // Delivery Information
                      const DeliveryInfo(
                        productName: "MackBook pro 13 inch (Gray)",
                        trackingId: 'U08765487CE',
                        shippedFrom: "Apple Store, California, USA",
                        shippedTo: "Unicorn Store, Mumbai, India",
                        status: "Your package is in transit",
                      ),

                      const SizedBox(height: 50),
                      /* Subheader(
                        title: "Recent Packages",
                        onpressed: () {},
                      ),
                      const SizedBox(height: 10),
                      const PackageInfo(
                        productName: "Dell Backpack",
                        trackingId: "TY9860036NM",
                        price: "350",
                        status: 'Pending',
                      ),
                      const SizedBox(height: 15),
                      const PackageInfo(
                        productName: "Iphone 14 pro max(256 gb)",
                        trackingId: "NY3456721VB",
                        price: "1250",
                        status: 'Pending',
                      ),
                      const SizedBox(height: 10), */
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _getDayWidget() {
  final now = DateTime.now();
  if (now.hour < 12) {
    return const Text('Good Morning 🌄');
  } else if (now.hour > 11 && now.hour < 17) {
    return const Text('Good Afternoon 🌞');
  }
  return const Text('Good Evening 🌙');
}

String _capitalizeFirstLetter(String firstName) {
  final splittedName = firstName.split('');
  final capitalName = splittedName[0].toUpperCase();
  splittedName[0] = capitalName;
  return splittedName.join();
}
