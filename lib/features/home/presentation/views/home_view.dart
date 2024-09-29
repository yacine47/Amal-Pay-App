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

class _HomeViewState extends State<HomeView> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      final page = _pageController.page!;
      int newIndex = page.round(); // Get the nearest index
      if (_currentIndex != newIndex) {
        setState(() {
          _currentIndex = newIndex;
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onTabTapped(int index) {
    // if (_currentIndex != index) {
    setState(() {
      _currentIndex = index;
      _pageController.jumpToPage(index);
    });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped, // Use the new method here
      ),
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index; // Update the index when the page changes
            });
          },
          children: [
            const HomeViewBody(),
            SettingViewBody(
              controller: _pageController,
            ),
          ],
        ),
      ),
    );
  }
}
