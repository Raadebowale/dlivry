import 'package:flutter/material.dart';
import 'package:dlivry/utils/app_colors.dart';

class ProductProgress extends StatelessWidget {
  const ProductProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppColors.lightBg,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tracking ID:",
                style: TextStyle(
                  color: AppColors.textBlack,
                  fontSize: 15,
                ),
              ),
              Text(
                "U08765487CE",
                style: TextStyle(
                  color: AppColors.textBlack,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(
            thickness: 0.5,
            color: AppColors.lightText,
          ),
          const SizedBox(height: 20),
          LinearProgressIndicator(
            backgroundColor: AppColors.primary.withOpacity(0.1),
            color: AppColors.primary,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // First Location
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "June 16, 2023",
                    style: TextStyle(
                      color: AppColors.textBlack,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Ikeja",
                    style: TextStyle(
                      color: AppColors.textBlack,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              const SizedBox(width: 20),
              // Arrow Forward/Right
              Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: AppColors.lightBg,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_forward),
              ),
              const SizedBox(width: 20),
              // Second Location
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "August 10, 2023",
                    style: TextStyle(
                      color: AppColors.textBlack,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Ajah",
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
          const SizedBox(height: 10),
          const Divider(
            thickness: 1,
            color: AppColors.lightText,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  "Still Packaged",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 5),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "View Details",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 13,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
