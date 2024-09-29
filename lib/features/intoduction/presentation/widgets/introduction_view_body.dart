import 'package:amal_pay_app/features/intoduction/presentation/widgets/action_button_intoduction_view.dart';
import 'package:amal_pay_app/features/intoduction/presentation/widgets/custom_background_image_introduction_view.dart';
import 'package:amal_pay_app/features/intoduction/presentation/widgets/custom_decription_service.dart';
import 'package:flutter/material.dart';

class IntroductionViewBody extends StatelessWidget {
  const IntroductionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomBackgourndImageIntroductionView(),
        CustomDecriptionService(),
        ActionButtonIntoductionView()
      ],
    );
  }
}
