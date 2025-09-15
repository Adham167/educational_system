import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:educational_system/core/utils/widgets/custom_elevated_button.dart';
import 'package:educational_system/core/utils/widgets/custom_text.dart';
import 'package:educational_system/features/auth/presentation/widgets/cutom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordBody extends StatelessWidget {
  const ResetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: ListView(
          children: [
            SizedBox(height: 64),
            Align(
              alignment: Alignment.center,
              child: Text("Reset Password", style: AppStyles.styleBold33),
            ),
            SizedBox(height: 84),
            CustomTextField(message: "Enter Your Email Address"),
            SizedBox(height: 48),

            CustomElevatedButton(
              text: "SEND CODE",
              textStyle: AppStyles.styleRegularWhite16,
              ontap: () {},
              color: AppColors.primary,
              Width: MediaQuery.of(context).size.width,
            ),
            SizedBox(height: 48),
            Align(
              alignment: Alignment.center,
              child: CustomText(
                text1: "Remember Password ? ",
                text2: "Sign In Here",
                ontap1: () => GoRouter.of(context).pop(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
