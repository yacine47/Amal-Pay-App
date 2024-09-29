import 'package:amal_pay_app/features/auth/presentation/views/widgets/otp_verification_view_body.dart';
import 'package:flutter/material.dart';

class OtpVerificationView extends StatelessWidget {
  const OtpVerificationView({super.key});
  static String path = '/OtpVerificationView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: OtpVerificationViewBody(),
      ),
    );
  }
}
