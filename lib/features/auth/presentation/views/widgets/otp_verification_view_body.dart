import 'package:amal_pay_app/constants.dart';
import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:amal_pay_app/core/widgets/custom_buttom.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_app_bar_otp.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_pin_put.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_rich_text.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/reset_send_message_widget.dart';
import 'package:amal_pay_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OtpVerificationViewBody extends StatefulWidget {
  const OtpVerificationViewBody({super.key});
  static String path = 'OtpVerificationViewBody';

  @override
  State<OtpVerificationViewBody> createState() =>
      _OtpVerificationViewBodyState();
}

class _OtpVerificationViewBodyState extends State<OtpVerificationViewBody> {
  bool isButtonEnabled = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
        child: Column(
          children: [
            const SizedBox(height: 12),
            const CustomAppBarOtp(),
            SizedBox(height: MediaQuery.of(context).size.height * .05),
            Text(
              'التحقق من رقم الهاتف',
              style: Styles.style20,
            ),
            const SizedBox(height: 6),
            const CustomRichText(
              mainText: 'الرجاء إدخال الرمز المكون من 4 أرقام المرسل إليه ',
              spanText: '76005478734+',
              continurMainText: 'عبر الرسائل القصيرة ',
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .072),
            Text(
              'ستنتهي صلاحية رمز التحقق في الساعة 00:59',
              style: Styles.style12.copyWith(
                color: AppColors.grey2,
              ),
            ),
            const SizedBox(height: 14),
            CustomPinPut(
              onCompleted: (pin) {
                setState(() {
                  isButtonEnabled = true;
                });
              },
              onChanged: (pin) {
                setState(() {
                  if (pin.length < 4) isButtonEnabled = false;
                });
              },
            ),
            const SizedBox(height: 11),
            const ResetSendMessageWidget(
              mainText: 'لم تتلق رمزا؟ ',
              spanText: 'اعادة الرسال الرسالة',
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .06),
            CustomButton(
              title: 'التحقق من الرقم',
              onTap: isButtonEnabled
                  ? () {
                      GoRouter.of(context).go(HomeView.path);
                    }
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
