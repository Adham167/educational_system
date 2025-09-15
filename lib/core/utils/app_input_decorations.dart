import 'package:flutter/material.dart';
import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/core/utils/app_styles.dart';

class AppInputDecorations {
  static InputDecoration inputDecoration({
    required String hint,
    IconButton? icon,
  }) {
    return InputDecoration(
      filled: true,
      hintText: hint,
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
    );
  }
}
