
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SigninBody extends StatelessWidget {
  const SigninBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Sign IN",style: AppStyles.styleBold33,),
      ],
    );
  }
}