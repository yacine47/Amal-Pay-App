import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  const CustomBottomNavigationBarItem({
    super.key,
    required this.iconPath,
    required this.activeIconPath,
    required this.isActive,
    required this.label,
    required this.index,
    this.onTap,
    this.paddingLeftIcon = 0,
    this.paddingRightIcon = 0,
  });

  final String iconPath;
  final String activeIconPath;
  final bool isActive;
  final int index;
  final String label;
  final void Function(int)? onTap;
  final double paddingLeftIcon;
  final double paddingRightIcon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!(index);
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 46,
        ), // Adjust padding
        decoration: BoxDecoration(
          color: isActive ? AppColors.lightGreen : Colors.transparent,
          borderRadius: BorderRadius.circular(22), // Adjust border radius
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: isActive ? paddingLeftIcon : 0,
                right: isActive ? paddingRightIcon : 0,
              ),
              child: SvgPicture.asset(
                isActive ? activeIconPath : iconPath,
                width: isActive ? 25.54 : 24,
                height: isActive ? 25.54 : 24,
              ),
            ),
            const SizedBox(height: 1),
            Text(
              label,
              style: isActive == false
                  ? Styles.style10.copyWith(
                      color: AppColors.unSelectBottomNav,
                      fontWeight: FontWeight.w500,
                    )
                  : Styles.style10.copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
