import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:educational_system/core/utils/widgets/custom_elevated_button.dart';
import 'package:educational_system/features/auth/presentation/widgets/cutom_text_field.dart';
import 'package:flutter/material.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text("Create New Password", style: AppStyles.styleBold33),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: ListView(
                children: [
                  SizedBox(height: 24),

                  SizedBox(height: 84),
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
                  SizedBox(height: 48),

                  CustomElevatedButton(
                    text: "SEND CODE",
                    textStyle: AppStyles.styleRegularWhite16,
                    ontap: () {},
                    color: AppColors.primary,
                    Width: MediaQuery.of(context).size.width,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
