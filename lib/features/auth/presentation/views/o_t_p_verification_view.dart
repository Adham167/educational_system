import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class OTPVerificationView extends StatelessWidget {
  const OTPVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("OTP Verification",style: AppStyles.styleBold33,)
        ],
      ),
    );
  }
}