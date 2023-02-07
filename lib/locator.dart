import 'package:get_it/get_it.dart';
import 'package:malina/features/home/presentation/bloc/home_bloc.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  //BLOC
  locator.registerFactory(() =>
      HomeBloc());

  // //USECASES


  // //CORE
  // //REPOSITORISE


  // //DATASOURSE



  // //EXTRNAL

  // locator.registerLazySingleton(() => CacheHelper());
}
