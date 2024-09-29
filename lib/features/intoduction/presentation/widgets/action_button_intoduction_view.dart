import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/app_icons_svg.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:amal_pay_app/features/intoduction/presentation/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class ActionButtonIntoductionView extends StatelessWidget {
  const ActionButtonIntoductionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        bottom: MediaQuery.of(context).size.height * .06,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33),
          child: Column(
            children: [
              const Spacer(),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go(WelcomeView.path);
                    },
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: AppColors.primaryColor,
                      child: SvgPicture.asset(AppIconsSvg.forwardLinear),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go(WelcomeView.path);
                    },
                    child: Text(
                      'تخطي',
                      style: Styles.style16.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
