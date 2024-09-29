import 'package:amal_pay_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomPhotoProfile extends StatelessWidget {
  const CustomPhotoProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(555),
        child: Image.asset(
          AppAssets.photoProfile,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
