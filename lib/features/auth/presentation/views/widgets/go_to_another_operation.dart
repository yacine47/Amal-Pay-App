import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/app_fonts.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GoToAnotherOperation extends StatelessWidget {
  const GoToAnotherOperation({
    super.key,
    required this.mainText,
    required this.spanText,
    this.onTap,
  });
  final String mainText;
  final String spanText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: mainText,
          style: Styles.style16.copyWith(
            color: Colors.white,
            fontFamily: AppFonts.cairo,
          ),
          children: [
            TextSpan(
              text: spanText,
              style: Styles.style16.copyWith(
                color: AppColors.primaryColor,
              ),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
