import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/core/utils/app_images.dart';
import 'package:educational_system/core/utils/app_router.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:educational_system/core/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PasswordChangedBody extends StatelessWidget {
  const PasswordChangedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            children: [
              Spacer(flex: 2),
              Image.asset(Assets.imagesApproval),
              SizedBox(height: 48),
              Text("Password Changed", style: AppStyles.styleBold33),
              Spacer(flex: 1),
              CustomElevatedButton(
                text: "BACK TO SIGN IN",
                textStyle: AppStyles.styleRegularWhite16,
                ontap:
                    () => GoRouter.of(
                      context,
                    ).pushReplacement(AppRouter.kOTPVerificationView),
                color: AppColors.primary,
                Width: MediaQuery.of(context).size.width,
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
