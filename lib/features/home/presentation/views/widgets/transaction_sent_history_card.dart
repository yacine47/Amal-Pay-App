import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/app_fonts.dart';
import 'package:amal_pay_app/core/utils/app_icons_svg.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransactionSentHistoryCard extends StatelessWidget {
  const TransactionSentHistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(55)),
              width: 39,
              height: 39,
              child: Center(
                child: SvgPicture.asset(AppIconsSvg.download,
                    width: 24,
                    height: 24,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    )),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ' 400 دينار',
                    style: Styles.style14.copyWith(
                      color: AppColors.grey3,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '12/2/2023 04:00pm',
                    style: Styles.style14.copyWith(
                      color: AppColors.grey3,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              textDirection: TextDirection.ltr,
              '400 JOD',
              style: Styles.style16.copyWith(
                color: AppColors.titleItems2,
                fontFamily: AppFonts.rubik,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        const Divider(
          color: AppColors.dividerColor,
          height: 0,
          thickness: 0.5,
        )
      ],
    );
  }
}
