import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/features/notification/presentation/views/widgets/notification_view_body.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});
  static String path = '/NotificationView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: NotificationViewBody(),
      ),
    );
  }
}
