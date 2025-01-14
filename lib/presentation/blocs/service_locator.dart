import 'package:blocs_app/config/config.dart';
import 'package:blocs_app/presentation/blocs/bloc.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void serviceLocatorInit(){
  getIt.registerSingleton(UsernameCubit());
  getIt.registerSingleton(RouterSimpleCubit());
  getIt.registerSingleton(COunterCubit());
  getIt.registerSingleton(ThemeCubit());
}