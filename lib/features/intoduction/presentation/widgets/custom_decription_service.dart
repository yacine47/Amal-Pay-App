import 'package:amal_pay_app/core/utils/styles.dart';
import 'package:amal_pay_app/core/widgets/custom_logo_app.dart';
import 'package:flutter/material.dart';

class CustomDecriptionService extends StatelessWidget {
  const CustomDecriptionService({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomLogoApp(),
            const SizedBox(height: 16),
            Text(
              'أسعدهم من مكانك',
              style: Styles.style20.copyWith(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              textAlign: TextAlign.center,
              'مع تطبيق أمل صار بإمكانك تحويل الاموال للنزلاء دون الحاجة للوصول الي مراكز الاصلاح والتاهيل بطريقة سهلة، سريعة وآمنة وبأقل التكاليف',
              style: Styles.style14.copyWith(
                height: 1.8,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
