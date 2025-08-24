
import 'package:educational_system/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.textStyle,
    this.Width,
    this.height,
    required this.ontap,
    required this.color,
  });
  final String text;
  final TextStyle textStyle;
  final double? Width;
  final double? height;
  final VoidCallback ontap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: Width ?? 144,
        height: height ?? 43,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary, width: 1),
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        child: Center(child: Text(text, style: textStyle)),
      ),
    );
  }
}
