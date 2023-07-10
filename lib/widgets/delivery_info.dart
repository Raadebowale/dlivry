import 'package:dlivry/widgets/package_info.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class DeliveryInfo extends StatelessWidget {
  const DeliveryInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: AppColors.lightBg,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PackageInfo(
            border: false,
            productName: "MackBook pro 13 inch (Gray)",
            trackingId: 'U08765487CE',
          ),
          SizedBox(height: 10),
          Divider(
            thickness: 0.5,
            color: AppColors.lightText,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "From",
                    style: TextStyle(
                      color: AppColors.textBlack,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Apple Store, California, USA",
                    style: TextStyle(
                      color: AppColors.textBlack,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Shipped To",
                    style: TextStyle(
                      color: AppColors.textBlack,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Unicorn Store, Mumbai, India",
                    style: TextStyle(
                      color: AppColors.textBlack,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(
            thickness: 1,
            color: AppColors.lightText,
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                "Status:",
                style: TextStyle(
                  color: AppColors.textBlack,
                  fontSize: 15,
                ),
              ),
              SizedBox(width: 5),
              Text(
                "Your package is in transit",
                style: TextStyle(
                  color: AppColors.textBlack,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          )
        ],
      ),
    );
  }
}
