import 'package:amal_pay_app/features/home/presentation/views/widgets/transaction_sent_history_card.dart';
import 'package:flutter/material.dart';

class TransactionSentHistoryCardListView extends StatelessWidget {
  const TransactionSentHistoryCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) => const TransactionSentHistoryCard(),
      separatorBuilder: (context, index) => const SizedBox(height: 10),
    );
  }
}
