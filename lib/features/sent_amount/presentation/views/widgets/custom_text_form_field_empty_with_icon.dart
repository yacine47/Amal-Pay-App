import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:amal_pay_app/features/sent_amount/presentation/views/widgets/custom_text_form_field_emtpy.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldEmptyWithTitle extends StatelessWidget {
  const CustomTextFormFieldEmptyWithTitle({
    super.key,
    required this.title,
    required this.hintTextFormField,
    this.keyboardType,
    this.obscureText = false,
  });
  final String title;
  final String hintTextFormField;
  final TextInputType? keyboardType;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Text(
            title,
            style: Styles.style14.copyWith(
              color: AppColors.titleTextField,
            ),
          ),
        ),
        const SizedBox(height: 8),
        CustomTextFromFieldEmpty(
          keyboardType: keyboardType,
          obscureText: obscureText,
          hint: hintTextFormField,
        )
      ],
    );
  }
}
