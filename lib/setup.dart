import 'package:get_it/get_it.dart';

GetIt getItInstance = GetIt.instance;

Future setup() async {
  _registerModels();
  _registerSingletonServices();
  _registerBlocs();
}

void _registerModels() {
  //getItInstance.registerSingleton<>(());
}

void _registerSingletonServices() {
  //getItInstance.registerLazySingleton<>(() => ());
}

void _registerBlocs() {
  // getItInstance.registerFactory<>(
  //     () => (getItInstance(), getItInstance()));
}
