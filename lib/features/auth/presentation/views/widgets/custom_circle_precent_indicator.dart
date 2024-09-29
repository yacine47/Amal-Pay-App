import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CustomCirclePercentIndicator extends StatelessWidget {
  const CustomCirclePercentIndicator({
    super.key,
    required this.step,
    required this.percent,
  });
  final int step;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 34.0,
      lineWidth: 7,
      percent: percent,
      progressColor: AppColors.primaryColor,
      backgroundColor: AppColors.lightGreen2,
      circularStrokeCap: CircularStrokeCap.round,
      center: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            'الخطوة',
            style: Styles.style10.copyWith(
              color: Colors.white,
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            '$step من 2',
            style: Styles.style12.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
