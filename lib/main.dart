import 'package:amal_pay_app/core/utils/app_colors.dart';
import 'package:amal_pay_app/core/utils/app_fonts.dart';
import 'package:amal_pay_app/core/utils/app_router.dart';
import 'package:amal_pay_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const AmalPayApp());
}

class AmalPayApp extends StatelessWidget {
  const AmalPayApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: const Locale('ar'),
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Amalpay',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: AppFonts.cairo,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
    );
  }
}
