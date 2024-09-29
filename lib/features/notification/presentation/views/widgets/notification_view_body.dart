import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/features/notification/presentation/views/widgets/custom_app_bar_notification_view.dart';
import 'package:amal_pay_app/features/notification/presentation/views/widgets/notification_items_with_title.dart';
import 'package:flutter/material.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.backgroundColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            CustomAppBarNotificationView(),
            SizedBox(height: 13),
            // SettingItemCardListView(),
            NotificationItemsWithTitle(),
          ],
        ));
  }
}
