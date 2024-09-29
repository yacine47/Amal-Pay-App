import 'package:amal_pay_app/constants.dart';
import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/widgets/title_items.dart';
import 'package:amal_pay_app/features/notification/presentation/views/widgets/notification_items_card_list_view.dart';
import 'package:flutter/material.dart';

class NotificationItemsWithTitle extends StatelessWidget {
  const NotificationItemsWithTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 19),
          TitleItems(
            title: 'أحدث التنبيهات',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.grey7,
          ),
          SizedBox(height: 15),
          NotificationItemsCardListView()
        ],
      ),
    );
  }
}
