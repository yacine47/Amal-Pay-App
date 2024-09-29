import 'package:amal_pay_app/core/utils/app_assets.dart';
import 'package:amal_pay_app/core/utils/app_fonts.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomLogoAuth extends StatelessWidget {
  const CustomLogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppAssets.logo,
          height: 42,
        ),
        const SizedBox(width: 11),
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
