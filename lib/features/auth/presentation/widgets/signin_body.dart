import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/core/utils/app_router.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:educational_system/core/utils/widgets/custom_elevated_button.dart';
import 'package:educational_system/core/utils/widgets/custom_text.dart';
import 'package:educational_system/features/auth/presentation/widgets/cutom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SigninBody extends StatelessWidget {
  const SigninBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          children: [
            SizedBox(height: 64),

            Text("Sign IN", style: AppStyles.styleBold33),
            SizedBox(height: 64),

            CustomTextField(message: "Email Address"),
            SizedBox(height: 16),

            CustomTextField(
              message: "Password",
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.visibility_off),
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: CustomText(
                text1: "Forgot Passowrd ? ",
                ontap2:
                    () => GoRouter.of(context).push(AppRouter.kResetPassword),
              ),
            ),
            SizedBox(height: 32),

            CustomElevatedButton(
              text: "SIGN IN",
              textStyle: AppStyles.styleRegularWhite16,
              ontap: () {},
              color: AppColors.primary,
              Width: MediaQuery.of(context).size.width,
            ),
            SizedBox(height: 32),

            CustomText(
              text1: "Don’t Have an Account? ",
              text2: " Register Here",
              ontap1: () {
                GoRouter.of(context).pushReplacement(AppRouter.kRegisterView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
