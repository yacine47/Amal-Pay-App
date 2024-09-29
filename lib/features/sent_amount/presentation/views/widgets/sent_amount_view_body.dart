import 'package:amal_pay_app/features/sent_amount/presentation/views/widgets/custom_app_bar_sent_amount_view.dart';
import 'package:amal_pay_app/features/sent_amount/presentation/views/widgets/sent_amount_information.dart';
import 'package:flutter/material.dart';

class SentAmountViewBody extends StatelessWidget {
  const SentAmountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            CustomAppBarSentAmountView(),
            SentAmountInformation(),
          ],
        ));
  }
}
