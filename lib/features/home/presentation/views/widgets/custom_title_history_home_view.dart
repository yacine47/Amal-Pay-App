import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:amal_pay_app/core/widgets/title_items.dart';
import 'package:flutter/material.dart';

class CustomTitleHistoryHomeView extends StatelessWidget {
  const CustomTitleHistoryHomeView({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const TitleItems(
          title: 'سجل الحوالات المرسلة ',
        ),
        const Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              'عرض الكل',
              style: Styles.style13.copyWith(
                color: AppColors.grey5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
