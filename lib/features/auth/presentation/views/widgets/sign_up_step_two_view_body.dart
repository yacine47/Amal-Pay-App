import 'package:amal_pay_app/features/auth/presentation/views/widgets/content_sign_up_step_two.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_background_image_auth.dart';
import 'package:flutter/material.dart';

class SignUpStepTwoViewBody extends StatelessWidget {
  const SignUpStepTwoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomBackgourndImageAuth(),
        ContentSignUpStepTwoView(),
      ],
    );
  }
}
