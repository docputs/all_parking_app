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
  static const shadowColor = Colors.black12;
}

ThemeData buildThemeData() {
  return ThemeData(
    appBarTheme: AppBarTheme(color: AppColors.primaryColor),
    primaryColor: AppColors.primaryColor,
    accentColor: AppColors.accentColor,
    cursorColor: AppColors.accentLighterColor,
    errorColor: AppColors.errorColor,
    scaffoldBackgroundColor: Colors.white,
    // textTheme: GoogleFonts.latoTextTheme(),
  );
}
