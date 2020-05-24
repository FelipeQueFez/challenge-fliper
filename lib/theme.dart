import 'package:challenge_fliper/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData getTheme(BuildContext context) {
  return ThemeData(
    primarySwatch: AppColors.theme,
    inputDecorationTheme: InputDecorationTheme(
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.primary,
          width: 1.5,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.primary,
          width: 1.5,
        ),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.primary,
          width: 1.5,
        ),
      ),
    ),
  );
}
