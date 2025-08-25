import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class OTPVerificationBody extends StatelessWidget {
  const OTPVerificationBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("OTP Verification",style: AppStyles.styleBold33,)
      ],
    );
  }
}