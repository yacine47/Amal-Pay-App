import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/app_fonts.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomConfirmationConditionText extends StatelessWidget {
  const CustomConfirmationConditionText({
    super.key,
    required this.mainText,
    required this.spanText,
    this.onTapSpanText,
    this.onTapMainText,
  });
  final String mainText;
  final String spanText;
  final VoidCallback? onTapSpanText;
  final VoidCallback? onTapMainText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '',
        style: Styles.style15.copyWith(
          color: Colors.white,
          fontFamily: AppFonts.cairo,
        ),
        children: [
          TextSpan(
            text: mainText,
            style: Styles.style15.copyWith(
              color: Colors.white,
              fontFamily: AppFonts.cairo,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTapMainText,
          ),
          TextSpan(
            text: spanText,
            style: Styles.style15.copyWith(
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w500,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTapSpanText,
          ),
        ],
      ),
    );
  }
}
