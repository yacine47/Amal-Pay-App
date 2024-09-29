import 'package:amal_pay_app/constants.dart';
import 'package:amal_pay_app/core/widgets/custom_buttom.dart';
import 'package:amal_pay_app/core/widgets/title_items.dart';
import 'package:amal_pay_app/features/sent_amount/presentation/views/widgets/custom_text_form_field_empty_with_icon.dart';
import 'package:amal_pay_app/features/sent_amount/presentation/views/widgets/payment_number_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SentAmountInformation extends StatelessWidget {
  const SentAmountInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 17),
          const TitleItems(title: 'إرسال حوالة'),
          const SizedBox(height: 17),
          const CustomTextFormFieldEmptyWithTitle(
            hintTextFormField: '1000 JOD',
            title: 'رمز النزيل ',
            keyboardType: TextInputType.numberWithOptions(),
          ),
          const SizedBox(height: 12),
          const CustomTextFormFieldEmptyWithTitle(
            hintTextFormField: '1000 JOD',
            title: 'المبلغ',
            keyboardType: TextInputType.numberWithOptions(),
          ),
          const SizedBox(height: 12),
          const CustomTextFormFieldEmptyWithTitle(
            hintTextFormField: '1000 JOD',
            title: 'تأكيد المبلغ',
            keyboardType: TextInputType.numberWithOptions(),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height -
                (600 + MediaQuery.of(context).viewInsets.bottom),
          ),
          CustomButton(
            title: 'اضغط هنا للحصول على رقم الدفع',
            onTap: () {
              GoRouter.of(context).push(PaymentNumberView.path);
            },
          ),
        ],
      ),
    );
  }
}
