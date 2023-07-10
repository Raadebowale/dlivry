import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/app_colors.dart';

class TextInput extends StatefulWidget {
  const TextInput({
    Key? key,
    required this.hint,
    this.password = false,
    this.icon,
    this.controller,
    this.validator,
    this.readOnly = false,
  }) : super(key: key);

  final String hint;
  final bool password;
  final IconData? icon;
  final bool readOnly;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  bool _isFieldFocused = false;
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: _isFieldFocused ? AppColors.primary : AppColors.lightText,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          if (widget.icon != null)
            FaIcon(
              widget.icon,
              color: _isFieldFocused ? AppColors.primary : AppColors.lightText,
            ),
          const SizedBox(width: 10),
          Expanded(
            child: TextFormField(
              validator: widget.validator,
              controller: widget.controller,
              style: const TextStyle(
                fontSize: 18.0,
                color: AppColors.textBlack,
              ),
              decoration: InputDecoration(
                  hintText: widget.hint,
                  hintStyle: const TextStyle(
                    color: AppColors.lightText,
                  ),
                  border: InputBorder.none),
              onChanged: (value) {
                setState(() {
                  _isFieldFocused = value.isNotEmpty;
                });
              },
              obscureText: widget.password ? hidePassword : false,
            ),
          ),
          if (widget.password)
            IconButton(
              onPressed: () {
                setState(() {
                  hidePassword = !hidePassword;
                });
              },
              icon: FaIcon(
                hidePassword ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash,
                color: AppColors.lightText,
              ),
            ),
        ],
      ),
    );
  }
}
