import 'package:amal_pay_app/features/setting/presentation/views/widgets/custom_app_bar_setting_view.dart';
import 'package:amal_pay_app/features/setting/presentation/views/widgets/setting_item_card_list_view.dart';
import 'package:flutter/material.dart';

class SettingViewBody extends StatelessWidget {
  const SettingViewBody({super.key, required this.controller});
  final TabController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            CustomAppBarSettingView(controller: controller),
            const SizedBox(height: 13),
            const SettingItemCardListView(),
          ],
        ));
  }
}
