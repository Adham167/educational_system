import 'package:educational_system/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:educational_system/features/splash/presentation/manager/splash_cubit/splash_cubit.dart';
import 'package:educational_system/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(EducationalSystem());
}

class EducationalSystem extends StatelessWidget {
  const EducationalSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..getStarted(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: SplashView()),
    );
  }
}
