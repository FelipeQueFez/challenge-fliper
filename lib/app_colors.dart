import 'package:flutter/material.dart';

class AppColors {
  static const _codePrimary = 0xff3B5CB8;
  static const primary = Color(_codePrimary);
  static const background = Color(0xffE8EBF6);
  static const white = Color(0xffFFFFFF);

  static MaterialColor theme = MaterialColor(_codePrimary, _primarySwatch);

  static Map<int, Color> _primarySwatch = {
    50: Color(_codePrimary),
    100: Color(_codePrimary),
    200: Color(_codePrimary),
    300: Color(_codePrimary),
    400: Color(_codePrimary),
    500: Color(_codePrimary),
    600: Color(_codePrimary),
    700: Color(_codePrimary),
    800: Color(_codePrimary),
    900: Color(_codePrimary),
  };
}
