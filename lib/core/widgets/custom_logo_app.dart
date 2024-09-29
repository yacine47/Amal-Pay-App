


import 'package:amal_pay_app/core/utils/app_assets.dart';
import 'package:amal_pay_app/core/utils/app_fonts.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomLogoApp extends StatelessWidget {
  const CustomLogoApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppAssets.logo,
          height: 61,
        ),
        Text(
          'Amalpay',
          style: Styles.style32.copyWith(
            fontFamily: AppFonts.sfProDisplay,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
