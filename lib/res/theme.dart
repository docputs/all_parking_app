import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xff233e94);
  static const accentColor = Color(0xff894cc1);
  static const accentLighterColor = Color(0xffa983cd);
  static const accentDarkerColor = Color(0xff693696);
  static const textColor = Color(0xff707070);
  static const errorColor = Colors.red;
}

ThemeData buildThemeData() {
  return ThemeData(
    appBarTheme: AppBarTheme(color: AppColors.primaryColor),
    primaryColor: AppColors.primaryColor,
    accentColor: AppColors.accentColor,
    cursorColor: AppColors.accentLighterColor,
    errorColor: AppColors.errorColor,
  );
}
