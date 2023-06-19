import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
    required this.hint,
    this.password = false,
    this.active = false,
  });
  final String hint;
  final bool password;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.smallgreyText,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          const Icon(Icons.mail),
          TextFormField(
            onChanged: (text) {},
            decoration: InputDecoration(
              hintText: hint,
              border: InputBorder.none,
            ),
          ),
          password ? Icon(Icons.remove_red_eye_rounded) : SizedBox(),
        ],
      ),
    );
  }
}
