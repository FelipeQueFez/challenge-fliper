import 'package:challenge_fliper/modules/hasura/services/hasura_service.dart';
import 'package:challenge_fliper/views/resume/bloc/resume_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt getItInstance = GetIt.instance;

Future setup() async {
  _registerServices();
  _registerBlocs();
}

void _registerServices() {
  getItInstance.registerLazySingleton<HasuraService>(() => HasuraService());
}

void _registerBlocs() {
  getItInstance.registerFactory<ResumeBloc>(() => ResumeBloc(getItInstance()));
}
