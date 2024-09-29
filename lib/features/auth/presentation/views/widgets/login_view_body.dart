import 'package:amal_pay_app/features/auth/presentation/views/widgets/content_login_view.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_background_image_auth.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomBackgourndImageAuth(),
        ContentLoginView(),
        
      ],
    );
  }
}
