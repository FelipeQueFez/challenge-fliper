import 'package:challenge_fliper/views/resume/widgets/resume_card.dart';
import 'package:challenge_fliper/views/shared/custom_container.dart';
import 'package:challenge_fliper/views/shared/custom_scaffold.dart';
import 'package:flutter/material.dart';

class ResumePage extends StatefulWidget {
  @override
  _ResumePageState createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: null,
      child: CustomContainer(
        child: Center(
          child: ResumeCard(),
        ),
      ),
    );
  }
}
