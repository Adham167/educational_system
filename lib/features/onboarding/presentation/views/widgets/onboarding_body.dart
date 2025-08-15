import 'package:educational_system/core/utils/app_images.dart';
import 'package:educational_system/features/onboarding/data/models/onboarding_model.dart';
import 'package:educational_system/features/onboarding/presentation/views/widgets/circle_progress_painter.dart';
import 'package:educational_system/features/onboarding/presentation/views/widgets/home_view.dart';
import 'package:educational_system/features/onboarding/presentation/views/widgets/onboarding_item.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatefulWidget {
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
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 64,
                height: 32,
                decoration: BoxDecoration(
                  color: Color(0xFFDADADA),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeView()),
                        ),
                    child: Text("Skip"),
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: OnboardingBody.onboardingList.length,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (context, index) {
                  return OnboardingItem(
                    onboardingModel: OnboardingBody.onboardingList[index],
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 68,
                    height: 68,
                    child: CustomPaint(
                      painter: CircleProgressPainter(
                        progress:
                            (_currentPage + 1) /
                            OnboardingBody.onboardingList.length,
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
                              OnboardingBody.onboardingList.length - 1) {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          } else {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeView(),
                              ),
                            );
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
