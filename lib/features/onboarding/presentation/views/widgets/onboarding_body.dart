import 'package:educational_system/core/utils/app_images.dart';
import 'package:educational_system/features/onboarding/data/models/onboarding_model.dart';
import 'package:educational_system/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:educational_system/features/onboarding/presentation/views/widgets/circle_progress_painter.dart';
import 'package:educational_system/features/onboarding/presentation/views/widgets/custom_button.dart';
import 'package:educational_system/features/onboarding/presentation/views/widgets/home_view.dart';
import 'package:educational_system/features/onboarding/presentation/views/widgets/on_skip_button.dart';
import 'package:educational_system/features/onboarding/presentation/views/widgets/onboarding_item.dart';
import 'package:educational_system/features/onboarding/presentation/views/widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatefulWidget {
  static var onboardingList;

  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
        child: Column(
          children: [
            SkipButton(
              onSkip: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeView()),
                );
              },
            ),
            Expanded(
              child: OnboardingPageView(
                pageController: _pageController,
                onPageChanged: (page) => setState(() => _currentPage = page),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomButton(
                currentPage: _currentPage,
                pageController: _pageController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
