import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Sign IN",style: AppStyles.styleBold33,),
    );
  }
}