import 'package:amal_pay_app/core/utils/app_icons_svg.dart';
import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_chose_gendre_card.dart';
import 'package:flutter/material.dart';

class CustomChoseGendre extends StatefulWidget {
  const CustomChoseGendre({super.key});

  @override
  State<CustomChoseGendre> createState() => _CustomChoseGendreState();
}

class _CustomChoseGendreState extends State<CustomChoseGendre> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Text(
            'الجنس',
            style: Styles.style14.copyWith(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            CustomChoseGendreCard(
              isActive: _currentIndex == 0,
              onTap: () {
                if (_currentIndex != 0) {
                  setState(() {
                    _currentIndex = 0;
                  });
                }
              },
              icon: AppIconsSvg.female,
              gender: 'أنثى',
            ),
            const SizedBox(width: 20),
            CustomChoseGendreCard(
              isActive: _currentIndex == 1,
              onTap: () {
                if (_currentIndex != 1) {
                  setState(() {
                    _currentIndex = 1;
                  });
                }
              },
              icon: AppIconsSvg.male,
              gender: 'ذكر',
            ),
          ],
        ),
      ],
    );
  }
}
