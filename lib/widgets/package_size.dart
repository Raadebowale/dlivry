
import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/app_colors.dart';

class PackageSize extends StatefulWidget {
  const PackageSize({
    super.key,
    required this.icon,
    required this.text,
    this.onpressed,
    required this.selected,
  });

  final IconData icon;
  final String text;
  final bool selected;
  final VoidCallback? onpressed;

  @override
  State<PackageSize> createState() => _PackageSizeState();
}

class _PackageSizeState extends State<PackageSize> {
  // int selectedContainer = 0;
  @override
  Widget build(BuildContext context) {
    // bool active = selected;

    /* void selectContainer(int index) {
      setState(() {
        selectedContainer = index;
        log("$selectedContainer");
        // selected = !selected;
      });
    } */

    return Expanded(
      child: GestureDetector(
        onTap: widget.onpressed,
        /* () {
          selectContainer(widget.index);
        }, */
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              color: widget.selected ? AppColors.primary : AppColors.lightText,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FaIcon(
                widget.icon,
                size: 25,
                color:
                    widget.selected ? AppColors.primary : AppColors.textBlack,
              ),
              const SizedBox(height: 5),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: 13,
                  color:
                      widget.selected ? AppColors.primary : AppColors.textBlack,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
