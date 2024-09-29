import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFromFieldAuth extends StatelessWidget {
  const CustomTextFromFieldAuth({
    super.key,
    this.maxLines = 1,
    required this.hint,
    this.onChanged,
    this.keyboardType,
    this.onPressed,
    this.onSaved,
    this.controller,
    this.minLines,
    this.validator,
    required this.icon,
    this.obscureText = false,
  });

  final int maxLines;
  final int? minLines;
  final Function(String?)? onSaved;
  final String hint;
  final void Function(String?)? onChanged;
  final TextInputType? keyboardType;
  final void Function()? onPressed;
  final String icon;
  final TextEditingController? controller;
  final bool obscureText;

  final FormFieldValidator? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enableSuggestions: false,
      obscureText:obscureText,
      autocorrect: false,
      controller: controller,
      onSaved: onSaved,
      validator: validator,
      onChanged: onChanged,
      keyboardType: keyboardType,
      cursorColor: Colors.black12,
      minLines: minLines,
      maxLines: maxLines,
      style: Styles.style16.copyWith(fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        // MyColors.textFieldColor
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: SvgPicture.asset(
            icon,
            width: 24,
            height: 24,
          ),
        ),
        contentPadding:
            const EdgeInsets.only(bottom: 14.5, top: 14.5, left: 16, right: 16),
        hintText: hint,
        hintTextDirection: TextDirection.rtl,
        hintStyle: Styles.style14.copyWith(color: AppColors.hintText),
        border: buildBorder(),
        enabledBorder: buildBorder(color: Colors.white),
        focusedBorder: buildBorder(
          color: Colors.white,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(36),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
