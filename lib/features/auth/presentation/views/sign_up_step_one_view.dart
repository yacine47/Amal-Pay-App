import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/sign_up_step_one_view_body.dart';
import 'package:flutter/material.dart';

class SignUpStepOneView extends StatelessWidget {
  const SignUpStepOneView({super.key});
  static String path = '/SignUpStepOneView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColorIntroApp,
      body: SignUpStepOneViewBody(),
    );
  }
}
