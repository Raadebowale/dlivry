import 'package:dlivry/utils/app_colors.dart';
import 'package:dlivry/widgets/package_info.dart';
import 'package:dlivry/widgets/subheader.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Location',
                      style: TextStyle(
                        fontSize: 13,
                        color: AppColors.textBlack,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'Ikeja, Lagos',
                      style: TextStyle(
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
            const SizedBox(height: 20),
            Expanded(
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
                                      FaIcon(FontAwesomeIcons.gift),
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
                    const SizedBox(height: 20),
                    Subheader(
                      title: "Recent Deliveries",
                      onpressed: () {},
                    ),
                    const SizedBox(height: 10),
                    const DeliveryInfo(),
                    const SizedBox(height: 30),
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
                    const SizedBox(height: 20),
                    Subheader(
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
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
