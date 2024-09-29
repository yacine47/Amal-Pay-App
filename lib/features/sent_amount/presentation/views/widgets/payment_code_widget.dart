import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaymentNumberWidget extends StatelessWidget {
  const PaymentNumberWidget({
    super.key,
    required this.number,
  });
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.paymentNumberColor,
          )),
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: MediaQuery.of(context).size.width * .2,
      ),
      child: GestureDetector(
        onTap: () {
          Clipboard.setData(ClipboardData(text: number));
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.black,
              content: Text(
                textAlign: TextAlign.center,
                'تم تسخ الرقم إالى الحافظة',
                style: Styles.style14.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        },
        child: Text(
          number,
          style: Styles.style33,
        ),
      ),
    );
  }
}
