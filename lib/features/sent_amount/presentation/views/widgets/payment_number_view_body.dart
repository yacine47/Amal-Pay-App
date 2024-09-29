import 'package:amal_pay_app/core/utils/app_assets.dart';
import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:amal_pay_app/core/widgets/custom_buttom.dart';
import 'package:amal_pay_app/features/sent_amount/presentation/views/widgets/custom_rich_text_payment_number.dart';
import 'package:amal_pay_app/features/sent_amount/presentation/views/widgets/payment_code_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class PaymentNumberViewBody extends StatelessWidget {
  const PaymentNumberViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        children: [
          const Spacer(),
          SvgPicture.asset(
            AppAssets.vectorPaymentCode,
            width: MediaQuery.of(context).size.width,
          ),
          const Spacer(),
          Text(
            'رقم الدفع',
            style: Styles.style12.copyWith(
              color: AppColors.grey2,
            ),
          ),
          const SizedBox(height: 14),
          const PaymentNumberWidget(
            number: '8558',
          ),
          const SizedBox(height: 21),
          CustomRichTextPaymentNumber(
            mainText: 'يرجى نسخ رقم الدفع والذهاب الي ',
            spanText: 'اى فواتيركم',
            continurMainText: ' لإتمام عملية الدفع',
            onTap: () {},
          ),
          const SizedBox(height: 18),
          Image.asset(
            AppAssets.efawateercomLogo,
            width: MediaQuery.of(context).size.width * .2,
          ),
          const Spacer(flex: 2),
          CustomButton(
              title: 'العودة للصفحة الرئيسية ',
              onTap: () {
                GoRouter.of(context).pop();
                GoRouter.of(context).pop();
              }),
          SizedBox(height: MediaQuery.of(context).size.height * .04),
        ],
      ),
    );
  }
}
