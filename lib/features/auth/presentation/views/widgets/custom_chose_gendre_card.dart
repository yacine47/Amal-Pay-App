import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomChoseGendreCard extends StatelessWidget {
  const CustomChoseGendreCard({
    super.key,
    required this.gender,
    required this.icon,
    this.onTap,
    required this.isActive,
  });
  final String gender;
  final bool isActive;
  final String icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: isActive ? AppColors.lightGreen : Colors.white,
            borderRadius: BorderRadius.circular(36),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 8),
              Text(
                gender,
                style: Styles.style15.copyWith(
                  color: AppColors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
