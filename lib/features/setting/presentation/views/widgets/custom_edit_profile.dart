import 'package:amal_pay_app/features/home/presentation/views/widgets/profile_name_user.dart';
import 'package:amal_pay_app/features/setting/presentation/views/widgets/custom_photo_profile_with_button_edit.dart';
import 'package:flutter/material.dart';

class CustomEditProfile extends StatelessWidget {
  const CustomEditProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomPhotoProfileWithButtonEdit(),
        SizedBox(width: 16),
        ProfileNameUser(),
      ],
    );
  }
}
