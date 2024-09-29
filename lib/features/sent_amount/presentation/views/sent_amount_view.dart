import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/features/sent_amount/presentation/views/widgets/sent_amount_view_body.dart';
import 'package:flutter/material.dart';

class SentAmountView extends StatelessWidget {
  const SentAmountView({super.key});
  static String path = '/SentAmountView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: SentAmountViewBody(),
      ),
    );
  }
}
