import 'package:amal_pay_app/features/auth/presentation/views/login_view.dart';
import 'package:amal_pay_app/features/auth/presentation/views/otp_verification_view.dart';
import 'package:amal_pay_app/features/auth/presentation/views/sign_up_step_one_view.dart';
import 'package:amal_pay_app/features/auth/presentation/views/sign_up_step_two_view.dart';
import 'package:amal_pay_app/features/home/presentation/views/home_view.dart';
import 'package:amal_pay_app/features/intoduction/presentation/introduction_view.dart';
import 'package:amal_pay_app/features/intoduction/presentation/welcome_view.dart';
import 'package:amal_pay_app/features/notification/presentation/views/notification_view.dart';
import 'package:amal_pay_app/features/sent_amount/presentation/views/sent_amount_view.dart';
import 'package:amal_pay_app/features/sent_amount/presentation/views/widgets/payment_number_view.dart';
import 'package:amal_pay_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    // initialLocation: PaymentNumberView.path,
    initialLocation: SplashView.path,
    routes: [
      GoRoute(
        path: SplashView.path,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: IntroductionView.path,
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation.drive(CurveTween(curve: Curves.easeInOutCirc)),
              child: child,
            );
          },
          child: const IntroductionView(),
        ),
      ),
      GoRoute(
        path: WelcomeView.path,
        builder: (context, state) => const WelcomeView(),
      ),
      GoRoute(
        path: LoginView.path,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: SignUpStepOneView.path,
        builder: (context, state) => const SignUpStepOneView(),
      ),
      GoRoute(
        path: SignUpStepTwoView.path,
        builder: (context, state) => const SignUpStepTwoView(),
      ),
      GoRoute(
        path: OtpVerificationView.path,
        builder: (context, state) => const OtpVerificationView(),
      ),
      GoRoute(
        path: HomeView.path,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: SentAmountView.path,
        builder: (context, state) => const SentAmountView(),
      ),
      GoRoute(
        path: NotificationView.path,
        builder: (context, state) => const NotificationView(),
      ),
      GoRoute(
        path: PaymentNumberView.path,
        builder: (context, state) => const PaymentNumberView(),
      ),
    ],
  );
}
