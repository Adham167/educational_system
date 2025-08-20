import 'package:educational_system/features/auth/presentation/views/get_started_view.dart';
import 'package:educational_system/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:educational_system/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KOnboardingView = '/onboardingview';
  static const KGetStartedView = '/getstartedview';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: KOnboardingView, builder: (context, state) => const OnboardingView()),
      GoRoute(path: KGetStartedView, builder: (context, state) => const GetStartedView()),
    ],
  );
}
