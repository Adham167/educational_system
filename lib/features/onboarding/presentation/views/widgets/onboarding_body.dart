import 'package:educational_system/features/auth/presentation/views/onboarding_signinup_view.dart';
import 'package:educational_system/features/onboarding/presentation/views/widgets/custom_button.dart';
import 'package:educational_system/features/onboarding/presentation/views/widgets/on_skip_button.dart';
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
                  MaterialPageRoute(builder: (context) => OnboardingSigninupView()),
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
