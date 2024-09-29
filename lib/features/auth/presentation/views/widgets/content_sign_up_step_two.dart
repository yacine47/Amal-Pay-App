import 'package:amal_pay_app/constants.dart';
import 'package:amal_pay_app/core/utils/app_icons_svg.dart';
import 'package:amal_pay_app/core/widgets/custom_buttom.dart';
import 'package:amal_pay_app/features/auth/presentation/views/otp_verification_view.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_circle_precent_indicator.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_confirmation_condition.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_drop_down_button_with_title.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_logo_auth.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_text_form_field_with_title.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContentSignUpStepTwoView extends StatelessWidget {
  const ContentSignUpStepTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .065,
              ),
              const CustomCirclePercentIndicator(
                percent: 1,
                step: 2,
              ),
              const SizedBox(height: 26),
              const CustomLogoAuth(),
              const SizedBox(height: 29),
              CustomDropDownButtonWithTitle(
                title: 'مكان السكن',
                icon: AppIconsSvg.location,
                hintTextDropDownButton: 'اختر موقع السكن',
                items: items,
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              CustomTextFormFieldWithTitle(
                title: 'رقم الهاتف',
                hintTextFormField: 'برجاء كتابة رقم الهاتف',
                iconTextFormField: AppIconsSvg.phone,
              ),
              const SizedBox(height: 16),
              CustomTextFormFieldWithTitle(
                title: 'البريد الإلكتروني',
                hintTextFormField: 'برجاء ادخال البريد الالكتروني',
                iconTextFormField: AppIconsSvg.envelope,
              ),
              const SizedBox(height: 16),
              CustomTextFormFieldWithTitle(
                title: 'الرقم السري',
                hintTextFormField: '************',
                iconTextFormField: AppIconsSvg.lock,
              ),
              const SizedBox(height: 16),
              CustomTextFormFieldWithTitle(
                title: 'الرقم السري',
                hintTextFormField: '************',
                iconTextFormField: AppIconsSvg.lock,
              ),
              const SizedBox(height: 19),
              const CustomConfirmationCondition(),
              const SizedBox(height: 25),
              CustomButton(
                title: 'إنشاء حساب',
                onTap: () {
                  GoRouter.of(context).push(OtpVerificationView.path);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  final List<String> items = const [
    "اب",
    "ام",
    "اخ",
    "اخت",
    "جد",
    "جدة",
    "عم",
    "خال",
    "ابن عم",
    "ابنة عم",
    "ابن خال",
    "ابنة خال"
  ];
}
