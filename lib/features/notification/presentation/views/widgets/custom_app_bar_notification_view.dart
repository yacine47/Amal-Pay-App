import 'package:amal_pay_app/constants.dart';
import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/widgets/custom_app_bar_title.dart';
import 'package:flutter/material.dart';

class CustomAppBarNotificationView extends StatelessWidget {
  const CustomAppBarNotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      padding: const EdgeInsets.only(right: kPaddingHorizontal),
      child: const Column(
        children: [
          SizedBox(height: 16),
          CustomAppBarTitle(
            title: 'التنبيهات',
          ),
          SizedBox(height: 26),
        ],
      ),
    );
  }
}
