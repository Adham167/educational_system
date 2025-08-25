import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/features/auth/presentation/views/widgets/register_as_body.dart';
import 'package:flutter/material.dart';

class RegisterAsView extends StatelessWidget {
  const RegisterAsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.primary, body: RegisterAsbody());
  }
}
