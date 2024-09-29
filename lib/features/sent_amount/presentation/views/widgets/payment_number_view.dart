import 'package:amal_pay_app/features/sent_amount/presentation/views/widgets/payment_number_view_body.dart';
import 'package:flutter/material.dart';

class PaymentNumberView extends StatelessWidget {
  const PaymentNumberView({super.key});
  static String path = '/PaymentNumberView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: PaymentNumberViewBody(),
      ),
    );
  }
}
