import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TitleItems extends StatelessWidget {
  const TitleItems({
    super.key,
    required this.title,
    this.fontWeight = FontWeight.w600,
    this.fontSize = 18,
    this.color,
  });
  final String title;
  final FontWeight fontWeight;
  final double fontSize;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Styles.style18.copyWith(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
