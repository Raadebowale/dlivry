import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/app_colors.dart';

class PackageSize extends StatefulWidget {
  const PackageSize({
    super.key,
    required this.icon,
    required this.text,
    required this.index,
    // this.onpressed,
  });

  final IconData icon;
  final String text;
  final int index;
  // final Function? onpressed;

  @override
  State<PackageSize> createState() => _PackageSizeState();
}

class _PackageSizeState extends State<PackageSize> {
  // bool selected = false;
  int selectedContainer = 0;

  @override
  Widget build(BuildContext context) {
    // bool active = selected;

    void selectContainer(int index) {
      setState(() {
        selectedContainer = index;
        // selected = !selected;
      });
    }

    return Expanded(
      child: GestureDetector(
        onTap: () {
          selectContainer(widget.index);
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              color: selectedContainer == widget.index
                  ? AppColors.primary
                  : AppColors.lightText,
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
                color: selectedContainer == widget.index
                    ? AppColors.primary
                    : AppColors.textBlack,
              ),
              const SizedBox(height: 5),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: 13,
                  color: selectedContainer == widget.index
                      ? AppColors.primary
                      : AppColors.textBlack,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
