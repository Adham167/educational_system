import 'package:educational_system/core/utils/app_styles.dart';
import 'package:educational_system/features/auth/presentation/widgets/cutom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: ListView(
          children: [
            SizedBox(height: 32),
            Text("Register Now", style: AppStyles.styleBold33),
            SizedBox(height: 64),
            CustomTextField(message: "Full Name"),
            SizedBox(height: 16),
            CustomTextField(message: "ُEmail Address"),
            SizedBox(height: 16),
            CustomTextField(message: "Phone Number"),
            SizedBox(height: 16),
            CustomTextField(
              message: "Password",
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.visibility_off),
              ),
            ),
            SizedBox(height: 16),
            CustomTextField(
              message: "Confirm Password",
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.visibility_off),
              ),
            ),
            SizedBox(height: 16),
            CustomTextField(message: "Level"),
            SizedBox(height: 16),
            CustomTextField(message: "Register Type"),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
