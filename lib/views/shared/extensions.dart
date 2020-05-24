import 'package:flutter/material.dart';

extension Texts on String {
  Widget headline6(
    BuildContext context, {
    double fontSize,
    Color color,
  }) {
    return Text(
      this,
      style: Theme.of(context).textTheme.headline6.copyWith(
            fontSize: fontSize,
            color: color,
          ),
    );
  }

  Widget subtitle2(
    BuildContext context, {
    double fontSize,
    Color color,
  }) {
    return Text(
      this,
      style: Theme.of(context).textTheme.subtitle2.copyWith(
            fontSize: fontSize,
            color: color,
          ),
    );
  }

  Widget bodyText1(
    BuildContext context, {
    double fontSize,
    Color color,
  }) {
    return Text(
      this,
      style: Theme.of(context).textTheme.bodyText1.copyWith(
            fontSize: fontSize,
            color: color,
          ),
    );
  }

  Widget bodyText2(
    BuildContext context, {
    double fontSize,
    Color color,
  }) {
    return Text(
      this,
      style: Theme.of(context).textTheme.bodyText2.copyWith(
            fontSize: fontSize,
            color: color,
          ),
    );
  }
}
