import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:amal_pay_app/core/widgets/custom_buttom.dart';
import 'package:amal_pay_app/core/widgets/custom_logo_app.dart';
import 'package:amal_pay_app/features/auth/presentation/views/login_view.dart';
import 'package:amal_pay_app/features/auth/presentation/views/sign_up_step_one_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContentWelcomeView extends StatelessWidget {
  const ContentWelcomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomLogoApp(),
            const SizedBox(height: 16),
            Text(
              'اهلا وسهلا في امل باي',
              style: Styles.style20.copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              textAlign: TextAlign.center,
              'أسعدهم من مكانك',
              style: Styles.style14.copyWith(
                height: 1.8,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            CustomButton(
              title: 'إنشاء حساب',
              onTap: () {
                GoRouter.of(context).push(SignUpStepOneView.path);
              },
            ),
            const SizedBox(height: 16),
            CustomButton(
              title: 'تسجيل الدخول',
              isBackgroundTransparent: true,
              onTap: () {
                GoRouter.of(context).push(LoginView.path);
              },
            ),
          ],
        ),
      ),
    );
  }
}
