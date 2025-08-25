import 'package:educational_system/core/utils/app_colors.dart';
import 'package:educational_system/core/utils/app_images.dart';
import 'package:educational_system/core/utils/app_router.dart';
import 'package:educational_system/core/utils/app_styles.dart';
import 'package:educational_system/core/utils/widget.dart/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(Assets.imagesLogo1),
              SizedBox(height: 16),
              Text(
                "Login Into Zagazig University, Faculty of Computers and Information",
                style: AppStyles.styleSemiBold34,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 64),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomElevatedButton(
                    text: 'SIGN IN',
                    textStyle: AppStyles.styleRegularWhite16,
                    color: AppColors.primary,
                    ontap: () {
                      GoRouter.of(context).push(AppRouter.kSigninView);
                    },
                  ),
                  SizedBox(width: 16),
                  CustomElevatedButton(
                    text: 'REGISTER',
                    textStyle: AppStyles.styleRegular16,
                    color: Colors.white,
                    ontap: () {
                      GoRouter.of(
                        context,
                      ).pushReplacement(AppRouter.kRegisterAsView);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
