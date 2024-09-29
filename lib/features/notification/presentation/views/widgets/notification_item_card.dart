import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NotificationItemCard extends StatelessWidget {
  const NotificationItemCard({super.key, required this.isRead});
  final bool isRead;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: isRead ? Colors.transparent : AppColors.unreadNotification,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 4,
                backgroundColor: AppColors.primaryColor,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    'عنوان رسالة التنبيه',
                    style: Styles.style16.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.textScandary,
                    ),
                  ),
                ),
              )
            ],
          ),
          Text(
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد ',
            style: Styles.style14.copyWith(
              color: AppColors.grey8,
            ),
          ),
        ],
      ),
    );
  }
}
