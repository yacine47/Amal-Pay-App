import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    this.isBackgroundTransparent = false,
    required this.title,
  });
  final VoidCallback? onTap;
  final bool isBackgroundTransparent;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: AppColors.disabledButton,
          backgroundColor: isBackgroundTransparent
              ? Colors.transparent
              : AppColors.primaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: onTap == null
                  ? AppColors.disabledButton
                  : AppColors.primaryColor,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          title,
          style: Styles.style16.copyWith(
            fontWeight: FontWeight.bold,
            color: onTap == null ? AppColors.disabledButtonText : Colors.white,
          ),
        ),
      ),
    );
  }
}
