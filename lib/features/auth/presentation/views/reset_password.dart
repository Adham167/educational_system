import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Reset Password",style: AppStyles.styleBold33,)
        ],
      ),
    );
  }
}