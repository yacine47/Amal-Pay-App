import 'package:amal_pay_app/core/widgets/custom_photo_profile.dart';
import 'package:amal_pay_app/features/home/presentation/views/widgets/profile_name_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomProfile extends StatelessWidget {
  const CustomProfile({
    super.key,
    required this.icon,
    this.onTap,
  });

  final String icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomPhotoProfile(),
        const SizedBox(width: 16),
        const ProfileNameUser(),
        const Spacer(),
        IconButton(
          onPressed: onTap,
          icon: SvgPicture.asset(icon,
              width: 24,
              height: 24,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              )),
        ),
      ],
    );
  }
}
