import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/app_icons_svg.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:amal_pay_app/features/setting/presentation/views/widgets/setting_item_card_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingItemCard extends StatelessWidget {
  const SettingItemCard({super.key, required this.setting});
  final SettingItemsModel setting;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: setting.onTap,
      child: Container(
        padding: const EdgeInsets.only(top: 12),
        child: SizedBox(
          child: Row(
            children: [
              const SizedBox(width: 8),
              SvgPicture.asset(
                setting.icon,
                width: 24,
                height: 24,
                colorFilter: ColorFilter.mode(
                  setting.iconColor,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                setting.title,
                style: Styles.style16.copyWith(
                  color: setting.textColor,
                  fontWeight: setting.fontWeight,
                ),
              ),
              const Spacer(),
              if (setting.subTitle != null)
                Text(
                  setting.subTitle!,
                  style: Styles.style12.copyWith(
                    color: AppColors.grey6,
                  ),
                ),
              const SizedBox(width: 10),
              if (setting.isaHasArrowLeftIcon)
                SvgPicture.asset(
                  AppIconsSvg.arrowLeft,
                ),
              const SizedBox(width: 8),
            ],
          ),
        ),
      ),
    );
  }
}
