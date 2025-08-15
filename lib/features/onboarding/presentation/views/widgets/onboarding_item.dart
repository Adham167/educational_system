import 'package:educational_system/core/utils/app_styles.dart';
import 'package:educational_system/features/onboarding/data/models/onboarding_model.dart';
import 'package:flutter/material.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key, required this.onboardingModel});
  final OnboardingModel onboardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(onboardingModel.image),
        SizedBox(height: 36),
        Text(
          onboardingModel.title,
          style: AppStyles.styleSemiBold35,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
