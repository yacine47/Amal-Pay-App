import 'package:amal_pay_app/features/home/presentation/views/widgets/custom_app_bar_home_view.dart';
import 'package:amal_pay_app/features/home/presentation/views/widgets/transaction_sent_history.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            CustomAppBarHomeView(),
            TransactionSentHistory(),
          ],
        ));
  }
}
