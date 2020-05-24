import 'package:challenge_fliper/app_colors.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Widget child;
  final AppBar appBar;

  const CustomScaffold({
    Key key,
    @required this.child,
    @required this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: appBar,
      body: child,
    );
  }
}
