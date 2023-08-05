import 'package:dlivry/widgets/package_info.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class DeliveryInfo extends StatefulWidget {
  const DeliveryInfo({
    super.key,
    required this.productName,
    required this.shippedFrom,
    required this.shippedTo,
    required this.trackingId,
    required this.status,
  });
  final String productName;
  final String trackingId;
  final String shippedFrom;
  final String shippedTo;
  final String status;

  @override
  State<DeliveryInfo> createState() => _DeliveryInfoState();
}

class _DeliveryInfoState extends State<DeliveryInfo> {
  final int _currentStep = 0;
  final List<Step> _steps = [
    const Step(
      title: Icon(Icons.circle),
      content: Text(
        "Apple Store, California, USA",
        style: TextStyle(
          color: AppColors.textBlack,
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    ),
    const Step(
      title: Icon(Icons.circle),
      content: const Text(
        "Unicorn Store, Mumbai, India",
        style: TextStyle(
          color: AppColors.textBlack,
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: AppColors.lightBg,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PackageInfo(
            border: false,
            productName: widget.productName,
            trackingId: widget.trackingId,
          ),
          const SizedBox(height: 10),
          const Divider(
            thickness: 0.5,
            color: AppColors.lightText,
          ),
          /* Stepper(
            steps: _steps,
            currentStep: _currentStep,
            type: StepperType.vertical,
          ), */
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "From",
                    style: TextStyle(
                      color: AppColors.textBlack,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    widget.shippedFrom,
                    style: const TextStyle(
                      color: AppColors.textBlack,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Shipped To",
                    style: TextStyle(
                      color: AppColors.textBlack,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    widget.shippedTo,
                    style: const TextStyle(
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
          const SizedBox(height: 10),
          const Divider(
            thickness: 1,
            color: AppColors.lightText,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text(
                "Status:",
                style: TextStyle(
                  color: AppColors.textBlack,
                  fontSize: 15,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                widget.status,
                style: const TextStyle(
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
