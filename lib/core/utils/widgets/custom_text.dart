import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text1,
    this.text2,
    this.ontap1,
    this.ontap2,
  });
  final String text1;
  final String? text2;
  final VoidCallback? ontap1;
  final VoidCallback? ontap2;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: AppStyles.styleRegular12,
            recognizer: TapGestureRecognizer()..onTap = ontap2,
          ),
          TextSpan(
            text: text2,
            style: AppStyles.styleSemiBold12,
            recognizer: TapGestureRecognizer()..onTap = ontap1,
          ),
        ],
      ),
    );
  }
}
