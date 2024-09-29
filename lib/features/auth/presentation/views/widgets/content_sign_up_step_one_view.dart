import 'package:amal_pay_app/constants.dart';
import 'package:amal_pay_app/core/utils/app_icons_svg.dart';
import 'package:amal_pay_app/core/widgets/custom_buttom.dart';
import 'package:amal_pay_app/features/auth/presentation/views/login_view.dart';
import 'package:amal_pay_app/features/auth/presentation/views/sign_up_step_two_view.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_chose_gendre.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_circle_precent_indicator.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_drop_down_button_with_title.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_logo_auth.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_text_form_field_with_title.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/go_to_another_operation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContentSignUpStepOneView extends StatelessWidget {
  const ContentSignUpStepOneView({super.key});

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
                percent: .5,
                step: 1,
              ),
              const SizedBox(height: 26),
              const CustomLogoAuth(),
              const SizedBox(height: 29),
              CustomTextFormFieldWithTitle(
                title: 'الإسم الرباعي',
                hintTextFormField: 'رجاءا اكتب اسمك',
                iconTextFormField: AppIconsSvg.person,
              ),
              const SizedBox(height: 16),
              CustomTextFormFieldWithTitle(
                title: 'الرقم الوطني',
                hintTextFormField: 'رجاء ادخل الرقم الوطني الخاص بك',
                iconTextFormField: AppIconsSvg.idCard,
              ),
              const SizedBox(height: 16),
              CustomTextFormFieldWithTitle(
                title: 'اسم النزيل',
                hintTextFormField: 'رجاء ادخل اسم النزيل',
                iconTextFormField: AppIconsSvg.userCircle,
              ),
              const SizedBox(height: 16),
              CustomDropDownButtonWithTitle(
                title: 'درجة القرابة',
                hintTextDropDownButton: 'إختر درجة القرابة',
                items: items,
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              const CustomChoseGendre(),
              const SizedBox(height: 29),
              CustomButton(
                title: 'إنشاء حساب',
                onTap: () {
                  GoRouter.of(context).push(SignUpStepTwoView.path);
                },
              ),
              const SizedBox(height: 10),
              GoToAnotherOperation(
                mainText: 'هل لديك حساب ؟   ',
                spanText: 'تسجيل دخول',
                onTap: () {
                  GoRouter.of(context).pop();
                  GoRouter.of(context).push(LoginView.path);
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
