import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.message, this.icon});
  final String message;
  final IconButton? icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        hintText: message,
        suffixIcon: icon,
        hintStyle: AppStyles.styleRegular13,
        fillColor: AppColors.textfield,
        contentPadding: const EdgeInsets.all(16),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
