import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:amal_pay_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:amal_pay_app/features/setting/presentation/views/widgets/setting_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static String path = '/HomeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
    controller.addListener(() {
      setState(() {
        _currentIndex = controller.index;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            controller.animateTo(index);
          });
        },
      ),
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: TabBarView(
          controller: controller,
          children: [
            const HomeViewBody(),
            SettingViewBody(
              controller: controller,
            ),
          ],
        ),
      ),
    );
  }
}
