import 'package:educational_system/core/utils/widgets/custom_app_bar.dart';
import 'package:educational_system/features/auth/presentation/widgets/create_new_password.dart';
import 'package:flutter/material.dart';

class CreateNewPasswordView extends StatelessWidget {
  const CreateNewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(), body: CreateNewPassword());
  }
}
