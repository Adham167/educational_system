import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PasswordChangedView extends StatelessWidget {
  const PasswordChangedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
                    Text("Password Changed",style: AppStyles.styleBold33,)

        ],
      ),
    );
  }
}