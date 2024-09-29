import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_drop_down_button.dart';
import 'package:flutter/material.dart';

class CustomDropDownButtonWithTitle extends StatelessWidget {
  const CustomDropDownButtonWithTitle(
      {super.key,
      required this.title,
      required this.hintTextDropDownButton,
      required this.items,
      required this.onChanged, this.icon});
  final String title;
  final String hintTextDropDownButton;
  final List<String> items;
  final void Function(String?) onChanged;
  final String? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Text(
            title,
            style: Styles.style14.copyWith(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 8),
        CustomDropdownButton(
          hintText: hintTextDropDownButton,
          items: items,
          icon: icon,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
