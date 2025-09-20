import 'package:educational_system/features/auth/presentation/views/create_new_password_view.dart';
import 'package:educational_system/features/auth/presentation/views/create_password_view.dart';
import 'package:educational_system/features/auth/presentation/views/get_started_view.dart';
import 'package:educational_system/features/auth/presentation/views/o_t_p_verification_view.dart';
import 'package:educational_system/features/auth/presentation/views/password_changed_view.dart';
import 'package:educational_system/features/auth/presentation/views/register_as_view.dart';
import 'package:educational_system/features/auth/presentation/views/register_view.dart';
import 'package:educational_system/features/auth/presentation/views/reset_password.dart';
import 'package:educational_system/features/auth/presentation/views/signin_view.dart';
import 'package:educational_system/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:educational_system/features/splash/presentation/views/splash_view.dart';
import 'package:educational_system/features/student/presentation/views/explore_view.dart';
import 'package:educational_system/features/student/presentation/views/level_term_view.dart';
import 'package:educational_system/features/student/presentation/views/level_view.dart';
import 'package:educational_system/features/student/presentation/views/student_view.dart';
import 'package:educational_system/features/student/presentation/views/subject_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const KOnboardingView = '/onboardingview';
  static const KGetStartedView = '/getstartedview';
  static const kRegisterAsView = '/registerasview';
  static const kRegisterView = '/RegisterView';
  static const kCreatePasswordView = '/CreatePasswordView';
  static const kOTPVerificationView = '/OTPVerificationView';
  static const kPasswordChangedView = '/PasswordChangedView';
  static const kCreateNewPasswordView = '/CreateNewPasswordView';
  static const kResetPassword = '/ResetPassword';
  static const kSigninView = '/SigninView';
  static const kStudentView = '/StudentView';
  static const kExploreView = '/ExploreView';
  static const kLevelView = '/LevelView';
  static const kLevelTermView = '/LevelTermView';
  static const kSubjectView = '/SubjectView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kStudentView, builder: (context, state) => const StudentView()),
      GoRoute(path: kPasswordChangedView, builder: (context, state) => const PasswordChangedView()),
      GoRoute(path: kExploreView, builder: (context, state) => const ExploreView()),
      GoRoute(path: kLevelView, builder: (context, state) => const LevelView()),
      GoRoute(path: kLevelTermView, builder: (context, state) => const LevelTermView()),
      GoRoute(path: kSubjectView, builder: (context, state) => const SubjectView()),
      GoRoute(
        path: KOnboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: KGetStartedView,
        builder: (context, state) => const GetStartedView(),
      ),
      GoRoute(
        path: kRegisterAsView,
        builder: (context, state) => const RegisterAsView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: kCreatePasswordView,
        builder: (context, state) => const CreatePasswordView(),
      ),
      GoRoute(
        path: kOTPVerificationView,
        builder: (context, state) => const OTPVerificationView(),
      ),
      GoRoute(
        path: kCreateNewPasswordView,
        builder: (context, state) => const CreateNewPasswordView(),
      ),
      GoRoute(
        path: kResetPassword,
        builder: (context, state) => const ResetPassword(),
      ),
      GoRoute(
        path: kSigninView,
        builder: (context, state) => const SigninView(),
      ),
    ],
  );
}
