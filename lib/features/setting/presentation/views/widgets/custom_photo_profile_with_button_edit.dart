import 'package:amal_pay_app/core/utils/app_icons_svg.dart';
import 'package:amal_pay_app/core/widgets/custom_photo_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomPhotoProfileWithButtonEdit extends StatelessWidget {
  const CustomPhotoProfileWithButtonEdit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        alignment: Alignment.bottomRight,
        clipBehavior: Clip.none,
        children: [
          const CustomPhotoProfile(),
          Positioned(
            right: -16,
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(AppIconsSvg.edit),
            ),
          )
        ],
      ),
    );
  }
}
