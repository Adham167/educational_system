import 'package:educational_system/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:educational_system/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EducationalSystem());
}

class EducationalSystem extends StatelessWidget {
  const EducationalSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashView());
  }
}
