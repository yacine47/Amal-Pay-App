import 'dart:async';

import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/features/intoduction/presentation/introduction_view.dart';
import 'package:amal_pay_app/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static String path = '/SplashView';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  double _elevation = 0;
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      setState(() {
        _elevation = 10.0;
        GoRouter.of(context).go(IntroductionView.path);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        child: Material(
          elevation: _elevation,
          color: AppColors.primaryColor,
          child: const SafeArea(
            child: SplashViewBody(),
          ),
        ),
      ),
    );
  }
}
