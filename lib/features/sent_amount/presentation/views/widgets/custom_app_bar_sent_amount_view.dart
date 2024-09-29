import 'package:amal_pay_app/constants.dart';
import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/app_icons_svg.dart';
import 'package:amal_pay_app/features/home/presentation/views/widgets/custom_profile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarSentAmountView extends StatelessWidget {
  const CustomAppBarSentAmountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
      child: Column(
        children: [
          const SizedBox(height: 18),
          CustomProfile(
            icon: AppIconsSvg.arrowLeft2,
            onTap: () {
              GoRouter.of(context).pop();
            },
          ),
          const SizedBox(height: 21),
        ],
      ),
    );
  }
}
