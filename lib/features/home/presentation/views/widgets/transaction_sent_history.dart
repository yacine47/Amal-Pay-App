import 'package:amal_pay_app/constants.dart';
import 'package:amal_pay_app/features/home/presentation/views/widgets/custom_title_history_home_view.dart';
import 'package:amal_pay_app/features/home/presentation/views/widgets/transaction_sent_history_card_list_view.dart';
import 'package:flutter/material.dart';

class TransactionSentHistory extends StatelessWidget {
  const TransactionSentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          CustomTitleHistoryHomeView(),
          SizedBox(height: 16),
          TransactionSentHistoryCardListView(),
        ],
      ),
    );
  }
}
