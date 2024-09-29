import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/app_fonts.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ResetSendMessageWidget extends StatelessWidget {
  const ResetSendMessageWidget({
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
          style: Styles.style14.copyWith(
              color: AppColors.grey2,
              fontFamily: AppFonts.cairo,
              fontWeight: FontWeight.w600),
          children: [
            TextSpan(
              text: spanText,
              style: Styles.style14.copyWith(
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
