import 'package:amal_pay_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomBackgourndImageAuth extends StatelessWidget {
  const CustomBackgourndImageAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        AppAssets.authScreenImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
