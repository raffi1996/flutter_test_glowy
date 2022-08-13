import 'package:get_it/get_it.dart';

import 'auth/auth_state.dart';

final locator = GetIt.instance;

void registerStoreGetIt() {
  locator.registerSingleton(AuthState());
}

void reRegisterStoreGetIt() {
  final authState = locator<AuthState>();
  locator.unregister(instance: authState);
  registerStoreGetIt();
}
