import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Register Now",style: AppStyles.styleBold33,)
      ],
    );
  }
}