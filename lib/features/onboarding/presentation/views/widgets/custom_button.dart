import 'package:educational_system/core/utils/app_router.dart';
import 'package:educational_system/features/onboarding/presentation/views/widgets/circle_progress_painter.dart';
import 'package:educational_system/features/onboarding/presentation/views/widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required int currentPage,
    required PageController pageController,
  }) : _currentPage = currentPage,
       _pageController = pageController;

  final int _currentPage;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 68,
          height: 68,
          child: CustomPaint(
            painter: CircleProgressPainter(
              progress:
                  (_currentPage + 1) / OnboardingPageView.onboardingList.length,
              color: Colors.green,
              backgroundColor: Colors.transparent,
            ),
          ),
        ),

        Positioned(
          child: Material(
            shape: CircleBorder(),
            child: InkWell(
              customBorder: CircleBorder(),
              onTap: () {
                if (_currentPage <
                    OnboardingPageView.onboardingList.length - 1) {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                } else {
                  GoRouter.of(context).push(AppRouter.KGetStartedView);
                }
              },
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF022D4F),
                ),
                child: Transform.rotate(
                  angle: -1.5708 * 2,
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
