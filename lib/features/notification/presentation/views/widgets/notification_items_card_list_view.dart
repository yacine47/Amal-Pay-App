import 'package:amal_pay_app/constants.dart';
import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/features/notification/presentation/views/widgets/notification_item_card.dart';
import 'package:flutter/material.dart';

class NotificationItemsCardListView extends StatelessWidget {
  const NotificationItemsCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 9),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 0),
              blurRadius: 16,
              color: Colors.black.withOpacity(.06)),
        ],
        borderRadius: BorderRadius.circular(6),
      ),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
        itemBuilder: (context, index) => const NotificationItemCard(
          isRead: true,
        ),
        separatorBuilder: (context, index) => const Column(
          children: [
            Divider(color: AppColors.dividerColor2, thickness: 2, height: 0),
          ],
        ),
        itemCount: 4,
      ),
    );
  }
}
