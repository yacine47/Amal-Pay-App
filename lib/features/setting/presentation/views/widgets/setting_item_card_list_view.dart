// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:amal_pay_app/constants.dart';
import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/app_icons_svg.dart';
import 'package:amal_pay_app/features/setting/presentation/views/widgets/setting_item_card.dart';

class SettingItemCardListView extends StatelessWidget {
  const SettingItemCardListView({super.key,});
      
  @override
  Widget build(BuildContext context) {
    final List<SettingItemsModel> settings = [
      SettingItemsModel(
        title: 'معلومات شخصية',
        icon: AppIconsSvg.userEdit,
        isaHasArrowLeftIcon: true,
        onTap: () {},
      ),
      SettingItemsModel(
        title: 'لغة',
        icon: AppIconsSvg.language,
        subTitle: 'العربية',
        isaHasArrowLeftIcon: true,
        onTap: () {},
      ),
      SettingItemsModel(
        title: 'حذف الحساب ',
        icon: AppIconsSvg.trash,
        isaHasArrowLeftIcon: false,
        onTap: () {},
      ),
      SettingItemsModel(
        fontWeight: FontWeight.w600,
        title: 'تسجيل خروج',
        icon: AppIconsSvg.logOut,
        isaHasArrowLeftIcon: false,
        onTap: () {},
        iconColor: AppColors.red2,
        textColor: AppColors.red2,
      ),
    ];
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
      itemBuilder: (context, index) => SettingItemCard(
        setting: settings[index],
      ),
      separatorBuilder: (context, index) => const Column(
        children: [
          SizedBox(height: 12),
          Divider(
            color: AppColors.dividerColor,
            thickness: .5,
            height: 0,
          ),
          SizedBox(height: 8),
        ],
      ),
      itemCount: settings.length,
    );
  }
}

class SettingItemsModel {
  final String title;
  final String icon;
  final String? subTitle;
  final bool isaHasArrowLeftIcon;
  final VoidCallback? onTap;
  final FontWeight fontWeight;
  final Color iconColor;
  final Color textColor;

  SettingItemsModel({
    required this.title,
    required this.icon,
    this.subTitle,
    this.isaHasArrowLeftIcon = true,
    this.onTap,
    this.fontWeight = FontWeight.w400,
    this.iconColor = AppColors.unSelectBottomNav,
    this.textColor = AppColors.settingTextCard,
  });
}
