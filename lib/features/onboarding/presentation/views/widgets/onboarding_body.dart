import 'package:educational_system/core/utils/app_images.dart';
import 'package:educational_system/features/onboarding/data/models/onboarding_model.dart';
import 'package:educational_system/features/onboarding/presentation/views/widgets/onboarding_item.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: PageView.builder(
              itemCount: onboardingList.length,
              itemBuilder: (context, index) {
                return OnboardingItem(onboardingModel: onboardingList[index]);
              },
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                
                CircleAvatar(
                  radius: 30,
                  
                  backgroundColor: Color(0xFF022D4F),
                  child: Transform.rotate(
                    angle: -1.571 * 2,
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
