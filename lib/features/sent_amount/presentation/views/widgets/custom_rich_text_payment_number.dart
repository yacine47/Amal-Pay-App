import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/app_fonts.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichTextPaymentNumber extends StatelessWidget {
  const CustomRichTextPaymentNumber({
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
            color: Colors.black,
            fontFamily: AppFonts.cairo,
            fontWeight: FontWeight.w400,
          ),
          children: [
            TextSpan(
              text: spanText,
              style: Styles.style14.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
            TextSpan(
              text: continurMainText,
              style: Styles.style14.copyWith(
                color: Colors.black,
                fontFamily: AppFonts.cairo,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
