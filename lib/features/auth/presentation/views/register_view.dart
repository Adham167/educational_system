import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Register Now",style: AppStyles.styleBold33,)
        ],
      ),
    );
  }
}