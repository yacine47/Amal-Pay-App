import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class CustomPinPut extends StatelessWidget {
  const CustomPinPut({
    super.key,
    this.onCompleted, this.onChanged,
  });
  final void Function(String)? onCompleted;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: 64,
      height: 64,
      textStyle: Styles.style24.copyWith(
        color: AppColors.textField,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderPinPut, width: 1.6),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      textStyle: Styles.style24.copyWith(
        color: AppColors.textField,
      ),
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(color: AppColors.borderPinPut, width: 1.6),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final errorPinTheme = defaultPinTheme.copyWith(
      textStyle: Styles.style24.copyWith(
        color: AppColors.redColorError,
      ),
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(color: AppColors.redColorError, width: 1.6),
        borderRadius: BorderRadius.circular(20),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(color: AppColors.primaryColor, width: 1.6),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Pinput(
        onCompleted: onCompleted,
        onChanged: onChanged,
        defaultPinTheme: defaultPinTheme,
        submittedPinTheme: submittedPinTheme,
        errorPinTheme: errorPinTheme,
        focusedPinTheme: focusedPinTheme,
      ),
    );
  }
}
