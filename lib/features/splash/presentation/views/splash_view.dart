import 'package:educational_system/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:educational_system/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void initState() {
    super.initState();
    _navigateToOnboarding();
  }

  void _navigateToOnboarding() async {
    await Future.delayed(const Duration(seconds: 3)); // الانتظار لمدة ثانيتين
    if (!mounted) return;
    
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const OnboardingView()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFF022D4F), body: SplashViewBody());
  }
}
