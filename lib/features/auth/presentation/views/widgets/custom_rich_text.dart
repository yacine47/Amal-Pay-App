import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/app_fonts.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
    required this.mainText,
    required this.spanText,
    this.onTap,
    required this.continurMainText,
  });
  final String mainText;
  final String continurMainText;
  final String spanText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: mainText,
          style: Styles.style14.copyWith(
            color: AppColors.grey2,
            fontFamily: AppFonts.cairo,
            fontWeight: FontWeight.w500,
          ),
          children: [
            TextSpan(
              text: spanText,
              style: Styles.style14.copyWith(
                color: AppColors.bodyFont,
                fontWeight: FontWeight.w600,
              ),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
            TextSpan(
              text: continurMainText,
              style: Styles.style14.copyWith(
                color: AppColors.grey2,
                fontWeight: FontWeight.w500,
              ),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
