import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;

  const CustomContainer({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.all(15),
      child: child,
    );
  }
}