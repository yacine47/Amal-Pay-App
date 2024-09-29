import 'package:amal_pay_app/constants.dart';
import 'package:amal_pay_app/core/utils/app_icons_svg.dart';
import 'package:amal_pay_app/core/widgets/custom_buttom.dart';
import 'package:amal_pay_app/features/auth/presentation/views/sign_up_step_one_view.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_logo_auth.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_text_form_field_with_title.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/go_to_another_operation.dart';
import 'package:amal_pay_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContentLoginView extends StatelessWidget {
  const ContentLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .22,
                width: MediaQuery.of(context).size.width,
              ),
              const CustomLogoAuth(),
              const SizedBox(height: 29),
              CustomTextFormFieldWithTitle(
                title: 'الإسم الرباعي',
                hintTextFormField: 'رجاءا اكتب اسمك',
                iconTextFormField: AppIconsSvg.person,
              ),
              const SizedBox(height: 16),
              CustomTextFormFieldWithTitle(
                title: 'الرقم السري ',
                hintTextFormField: '************',
                obscureText: true,
                iconTextFormField: AppIconsSvg.lock,
              ),
              const SizedBox(height: 29),
              CustomButton(
                title: 'تسجيل دخول',
                onTap: () {
                  GoRouter.of(context).go(HomeView.path);
                },
              ),
              const SizedBox(height: 10),
              GoToAnotherOperation(
                mainText: 'ليس لديك حساب ؟   ',
                spanText: 'إنشاء حساب',
                onTap: () {
                  GoRouter.of(context).pop();
                  GoRouter.of(context).push(SignUpStepOneView.path);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
