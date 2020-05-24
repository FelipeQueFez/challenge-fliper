import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:challenge_fliper/modules/hasura/services/hasura_service.dart';
import 'package:challenge_fliper/views/resume/bloc/resume_event.dart';
import 'package:challenge_fliper/views/resume/bloc/resume_state.dart';

class ResumeBloc extends Bloc<ResumeEvent, ResumeState> {
  final HasuraService hasuraService;

  ResumeBloc(this.hasuraService);

  @override
  ResumeState get initialState => ResumeState.initial();

  @override
  Stream<ResumeState> mapEventToState(
    ResumeEvent event,
  ) async* {
    if (event is ResumeEvent) {
      yield* _mapLoad();
    }
  }

  Stream<ResumeState> _mapLoad() async* {
    yield state.copyWith(loading: true);

    var model = await hasuraService.getResume();

    yield state.copyWith(loading: false, data: model.data, error: model.error);
  }
}
