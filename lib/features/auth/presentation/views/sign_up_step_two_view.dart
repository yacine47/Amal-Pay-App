import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/sign_up_step_two_view_body.dart';
import 'package:flutter/material.dart';

class SignUpStepTwoView extends StatelessWidget {
  const SignUpStepTwoView({super.key});
  static String path = '/SignUpStepTwoView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColorIntroApp,
      body: SignUpStepTwoViewBody(),
    );
  }
}
