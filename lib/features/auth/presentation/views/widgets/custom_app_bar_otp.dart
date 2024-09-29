import 'package:amal_pay_app/core/utils/app_icons_svg.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarOtp extends StatelessWidget {
  const CustomAppBarOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            if (GoRouter.of(context).canPop()) GoRouter.of(context).pop();
          },
          icon: SvgPicture.asset(
            AppIconsSvg.goBack,
            width: 19.64,
            height: 24,
          ),
        ),
        Text(
          'إنشاء حساب',
          style: Styles.style18,
        ),
        const SizedBox(width: 30)
      ],
    );
  }
}
