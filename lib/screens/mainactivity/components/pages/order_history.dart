import 'package:flutter/material.dart';

import 'package:dlivry/widgets/product_progress.dart';
import 'package:dlivry/utils/app_colors.dart';

import 'package:dlivry/routes/route_path.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({super.key});

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    var cal = size.width - (size.width * 0.05);

    // final padding = MediaQuery.of(context).padding;
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Order History",
            style: TextStyle(
              color: AppColors.textBlack,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                // width: 700,
                // margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                decoration: BoxDecoration(
                  color: AppColors.smallgreyText.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TabBar(
                  // indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.primary,
                  ),
                  unselectedLabelColor: AppColors.smallgreyText,
                  indicatorColor: AppColors.primary,
                  labelColor: Colors.white,
                  // overlayColor: MaterialColor(primary, swatch),
                  tabs: [
                    Tab(
                      child: Container(
                        height: 40,
                        width: cal / 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Pending',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        height: 40,
                        width: cal / 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Completed',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const ProductProgress(),
            ],
          ),
        ),
      ),
    );
  }
}
