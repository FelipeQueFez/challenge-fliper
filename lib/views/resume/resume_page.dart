import 'package:challenge_fliper/setup.dart';
import 'package:challenge_fliper/views/resume/bloc/resume_bloc.dart';
import 'package:challenge_fliper/views/resume/bloc/resume_event.dart';
import 'package:challenge_fliper/views/resume/bloc/resume_state.dart';
import 'package:challenge_fliper/views/resume/widgets/resume_card.dart';
import 'package:challenge_fliper/views/shared/custom_container.dart';
import 'package:challenge_fliper/views/shared/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResumePage extends StatefulWidget {
  @override
  _ResumePageState createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  ResumeBloc _resumeBloc;

  @override
  void initState() {
    _resumeBloc = getItInstance()..add(ResumeEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: null,
      child: CustomContainer(
        child: Center(
          child: BlocConsumer<ResumeBloc, ResumeState>(
            bloc: _resumeBloc,
            listener: (contextListener, state) {
              if (state.error.isNotEmpty) {
                _showMessage(contextListener, state.error);
              }
            },
            builder: (context, state) {
              if (state.loading) {
                return CircularProgressIndicator();
              } else if (state.data != null) {
                return ResumeCard();
              } else {
                return SizedBox.shrink();
              }
            },
          ),
        ),
      ),
    );
  }

  void _showMessage(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
