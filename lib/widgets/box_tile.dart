import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/app_colors.dart';

class BoxTile extends StatefulWidget {
  const BoxTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.clicked = false,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final bool clicked;

  @override
  State<BoxTile> createState() => _BoxTileState();
}

class _BoxTileState extends State<BoxTile> {
  @override
  Widget build(BuildContext context) {
    bool active = widget.clicked;
    return GestureDetector(
      onTap: () {
        setState(() {
          active = !widget.clicked;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: active ? AppColors.primary : AppColors.lightText,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: active ? AppColors.primary : AppColors.disabled,
              ),
              child: Center(
                child: FaIcon(
                  widget.icon,
                  size: 20,
                  color: active ? Colors.white : AppColors.smallgreyText,
                ),
              ),
            ),
            const SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    color: AppColors.smallgreyText,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  widget.subtitle,
                  style: const TextStyle(
                    color: AppColors.textBlack,
                    fontSize: 14,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
