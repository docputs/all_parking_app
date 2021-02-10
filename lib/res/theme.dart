import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const primaryColor = Color(0xff233e94);
  static const accentColor = Color(0xff894cc1);
  static const accentLighterColor = Color(0xffa983cd);
  static const accentDarkerColor = Color(0xff693696);
  static const textColor = Color(0xff707070);
  static const errorColor = Color(0xffdb504a);
  static const checkColor = Color(0xff419d78);
  static const shadowColor = Color(0xfff1f1f1);
  static const backgroundColor = Color(0xfff7f7f7);
}

ThemeData buildThemeData() {
  return ThemeData(
    textSelectionTheme: TextSelectionThemeData(cursorColor: AppColors.accentLighterColor),
    appBarTheme: AppBarTheme(color: AppColors.primaryColor),
    primaryColor: AppColors.primaryColor,
    accentColor: AppColors.accentColor,
    errorColor: AppColors.errorColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    shadowColor: AppColors.shadowColor,
    dividerColor: AppColors.textColor,
    colorScheme: ColorScheme.light().copyWith(
      primary: AppColors.primaryColor,
      secondary: AppColors.accentColor,
      onSecondary: Colors.white,
    ),
    // textTheme: GoogleFonts.latoTextTheme(),
  );
}
