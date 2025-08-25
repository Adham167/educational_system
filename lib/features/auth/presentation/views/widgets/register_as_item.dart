import 'package:educational_system/core/utils/app_styles.dart';
import 'package:educational_system/features/auth/data/models/register_as_model.dart';
import 'package:flutter/material.dart';

class RegisterAsItem extends StatelessWidget {
  const RegisterAsItem({super.key, required this.registerAsModel});
  final RegisterAsModel registerAsModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 183,
      height: 160,
      decoration: BoxDecoration(
        color: Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(registerAsModel.image, height: 140, width: 140),
          Text(registerAsModel.name, style: AppStyles.styleSemiBold14),
        ],
      ),
    );
  }
}
