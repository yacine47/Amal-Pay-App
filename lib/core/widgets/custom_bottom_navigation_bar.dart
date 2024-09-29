import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/app_icons_svg.dart';
import 'package:amal_pay_app/core/widgets/custom_bottom_navigation_bar_item.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {super.key, this.onTap, required this.currentIndex});

  final void Function(int)? onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.dividerColor),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Evenly space items
        children: [
          CustomBottomNavigationBarItem(
            paddingLeftIcon: 2,
            label: 'الرئيسية',
            iconPath: AppIconsSvg.homeLight,
            activeIconPath: AppIconsSvg.home,
            isActive: currentIndex == 0,
            index: 0,
            onTap: onTap,
          ),
          CustomBottomNavigationBarItem(
            label: 'الاعدادات',
            iconPath: AppIconsSvg.settingLight,
            activeIconPath: AppIconsSvg.setting,
            isActive: currentIndex == 1,
            index: 1,
            paddingRightIcon: 2,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
