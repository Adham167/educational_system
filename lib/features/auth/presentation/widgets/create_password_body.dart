import 'package:educational_system/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CreatePassowrdbody extends StatelessWidget {
  const CreatePassowrdbody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Create New Password",style: AppStyles.styleBold33,)
      ],
    );
  }
}