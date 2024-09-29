

import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ProfileNameUser extends StatelessWidget {
  const ProfileNameUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'صباح الخير ',
          style: Styles.style14.copyWith(
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          'خالد محمد احمد',
          style: Styles.style14.copyWith(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
