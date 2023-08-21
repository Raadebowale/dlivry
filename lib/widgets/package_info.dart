import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/app_colors.dart';

class PackageInfo extends StatelessWidget {
  const PackageInfo({
    super.key,
    this.border = true,
    required this.productName,
    required this.trackingId,
    this.price,
    this.status,
  });
  final bool border;
  final String productName;
  final String trackingId;
  final String? price;
  final String? status;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      padding: border ? const EdgeInsets.all(15.0) : null,
      decoration: border
          ? BoxDecoration(
              border: Border.all(
                color: AppColors.lightText,
              ),
              borderRadius: BorderRadius.circular(10),
            )
          : null,
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: border ? AppColors.lightText : Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const Icon(
              CupertinoIcons.cube_box,
              color: AppColors.textBlack,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      productName,
                      style: const TextStyle(
                        color: AppColors.textBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(width: 10),
                    price != null
                        ? Text(
                            "\$${price!}",
                            style: const TextStyle(
                              color: AppColors.textBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.ellipsis,
                          )
                        : const FaIcon(FontAwesomeIcons.ellipsisVertical),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tracking ID: $trackingId",
                      style: const TextStyle(
                        color: AppColors.textBlack,
                        fontSize: 14,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (status != null)
                      Text(
                        status!,
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
