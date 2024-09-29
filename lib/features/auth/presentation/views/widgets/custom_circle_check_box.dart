import 'package:flutter/material.dart';

class CustomCircleCheckBox extends StatelessWidget {
  const CustomCircleCheckBox({
    super.key,
    this.onTap,
    required this.isActive,
  });
  final VoidCallback? onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 10,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 9,
          backgroundColor: Colors.black,
          child: isActive
              ? const CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.white,
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}
