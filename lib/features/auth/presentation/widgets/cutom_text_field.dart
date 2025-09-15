import 'package:educational_system/core/utils/app_input_decorations.dart';
import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.message, this.icon});
  final String message;
  final IconButton? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: AppInputDecorations.inputDecoration(
        hint: message,
        icon: icon,
      ),
    );
  }
}
