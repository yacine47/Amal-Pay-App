import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/widgets/custom_logo_app.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: MediaQuery.of(context).size.width),
        const CircleAvatar(
          radius: 188 / 2,
          backgroundColor: AppColors.primaryColor,
          child: CustomLogoApp(),
        )
      ],
    );
  }
}
