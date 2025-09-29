import 'package:educational_system/core/utils/app_router.dart';
import 'package:educational_system/features/splash/presentation/manager/splash_cubit/splash_cubit.dart';
import 'package:educational_system/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF022D4F),
      body: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is UnAuthenticated) {
            GoRouter.of(context).push(AppRouter.KOnboardingView);
          } else if (state is Authenticated) {
            GoRouter.of(context).push(AppRouter.kStudentView);
          }
        },
        child: SplashViewBody(),
      ),
    );
  }
}
