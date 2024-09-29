import 'package:amal_pay_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomBackgourndImageWelcomeView extends StatelessWidget {
  const CustomBackgourndImageWelcomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        AppAssets.welcomeScreenImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
