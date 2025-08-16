import 'package:educational_system/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:educational_system/features/onboarding/data/models/onboarding_model.dart';
import 'package:educational_system/features/onboarding/presentation/views/widgets/onboarding_item.dart';

class OnboardingPageView extends StatelessWidget {
  

  const OnboardingPageView({
    super.key,
    required this.pageController,
    required this.onPageChanged,
  });
  static List<OnboardingModel> onboardingList = [
    OnboardingModel(
      image: Assets.imagesOnboarding1,
      title: "Learn Today, Lead Tomorrow.",
    ),
    OnboardingModel(
      image: Assets.imagesOnboarding2,
      title: "Building a Stronger Future Through Education.",
    ),
    OnboardingModel(
      image: Assets.imagesOnboarding3,
      title: "Discover. Learn. Succeed.",
    ),
    OnboardingModel(
      image: Assets.imagesOnboarding4,
      title: "Dive into Your First Lesson!",
    ),
  ];

  final PageController pageController;
  final ValueChanged<int> onPageChanged;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: onboardingList.length,
      onPageChanged: onPageChanged,
      itemBuilder: (context, index) {
        return OnboardingItem(
          onboardingModel: onboardingList[index],
        );
      },
    );
  }
}
