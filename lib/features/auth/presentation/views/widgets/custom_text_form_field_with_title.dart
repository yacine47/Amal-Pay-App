import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldWithTitle extends StatelessWidget {
  const CustomTextFormFieldWithTitle({
    super.key,
    required this.title,
    required this.hintTextFormField,
    required this.iconTextFormField,
    this.keyboardType,
    this.obscureText = false,
  });
  final String title;
  final String hintTextFormField;
  final String iconTextFormField;
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
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 8),
        CustomTextFromFieldAuth(
          keyboardType: keyboardType,
          obscureText: obscureText,
          hint: hintTextFormField,
          icon: iconTextFormField,
        )
      ],
    );
  }
}
