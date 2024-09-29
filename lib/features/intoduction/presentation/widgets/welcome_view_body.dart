import 'package:amal_pay_app/features/intoduction/presentation/widgets/content_welcome_view.dart';
import 'package:amal_pay_app/features/intoduction/presentation/widgets/custom_background_image_welcome_view.dart';
import 'package:flutter/material.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomBackgourndImageWelcomeView(),
        ContentWelcomeView(),
      ],
    );
  }
}
