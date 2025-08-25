import 'package:educational_system/core/utils/app_styles.dart';
import 'package:educational_system/features/auth/data/models/register_as_model.dart';
import 'package:educational_system/features/auth/presentation/views/widgets/active_register_as_item.dart';
import 'package:educational_system/features/auth/presentation/views/widgets/in_active_register_as_item.dart';
import 'package:flutter/material.dart';

class RegisterAsItem extends StatelessWidget {
  const RegisterAsItem({
    super.key,
    required this.registerAsModel,
    required this.isAtive,
  });
  final RegisterAsModel registerAsModel;
  final bool isAtive;
  @override
  Widget build(BuildContext context) {
    return isAtive
        ? ActiveRegisterAsItem(registerAsModel: registerAsModel)
        : InActiveRegisterAsItem(registerAsModel: registerAsModel);
  }
}
