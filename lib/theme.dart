import 'package:challenge_fliper/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData getTheme(BuildContext context) {
  return ThemeData(
    primarySwatch: AppColors.theme,
    textTheme: TextTheme(
      headline6: TextStyle(
        color: AppColors.primary,
        fontSize: 25,
        letterSpacing: 0.75,
        fontWeight: FontWeight.bold,
      ),
      subtitle2: TextStyle(
        color: AppColors.primary,
        fontSize: 22,
        letterSpacing: 0.66,
      ),
      bodyText1: TextStyle(
        color: AppColors.gray,
        fontSize: 16,
        letterSpacing: 0.48,
      ),
      bodyText2: TextStyle(
        color: AppColors.primary,
        fontSize: 18,
        letterSpacing: 0.54,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
