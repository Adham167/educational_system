import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key, required this.onSkip});
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSkip,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 64,
          height: 32,
          decoration: BoxDecoration(
            color: const Color(0xFFDADADA),
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Center(
            child: Text("Skip", style: AppStyles.styleRegular14),
          ),
        ),
      ),
    );
  }
}
