import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_circle_check_box.dart';
import 'package:amal_pay_app/features/auth/presentation/views/widgets/custom_confirmation_condition_text.dart';
import 'package:flutter/material.dart';

class CustomConfirmationCondition extends StatefulWidget {
  const CustomConfirmationCondition({super.key});

  @override
  State<CustomConfirmationCondition> createState() =>
      _CustomConfirmationConditionState();
}

class _CustomConfirmationConditionState
    extends State<CustomConfirmationCondition> {
  bool _isActive = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 14),
        CustomCircleCheckBox(
          isActive: _isActive,
          onTap: () {
            setState(() {
              _isActive = !_isActive;
            });
          },
        ),
        const SizedBox(width: 8),
        Expanded(
          child: CustomConfirmationConditionText(
            mainText: 'لقد قرأت وأوافق على ',
            spanText: 'الشروط والأحكام',
            onTapSpanText: () {},
            onTapMainText: () {
              setState(() {
                _isActive = !_isActive;
              });
            },
          ),
        )
      ],
    );
  }
}
