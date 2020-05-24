import 'package:challenge_fliper/setup.dart';
import 'package:challenge_fliper/theme.dart';
import 'package:challenge_fliper/views/resume/resume_page.dart';
import 'package:flutter/material.dart';

void main() async {
  await setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getTheme(context),
      home: ResumePage(),
    );
  }
}
