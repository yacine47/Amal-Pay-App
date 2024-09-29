import 'package:amal_pay_app/constants.dart';
import 'package:amal_pay_app/core/utils/app_assets.dart';
import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/widgets/custom_app_bar_title.dart';
import 'package:amal_pay_app/features/setting/presentation/views/widgets/custom_edit_profile.dart';
import 'package:flutter/material.dart';

class CustomAppBarSettingView extends StatelessWidget {
  const CustomAppBarSettingView({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      padding: const EdgeInsets.only(right: kPaddingHorizontal),
      child: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                const SizedBox(height: 16),
                CustomAppBarTitle(
                  title: 'الاعدادت',
                  onTap: () {
                    controller.animateTo(0,
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.easeInOut);
                  },
                ),
                const Spacer(),
                const CustomEditProfile(),
                const SizedBox(height: 19),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                AppAssets.rectangleProfile,
                height: MediaQuery.of(context).size.width * .4,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
