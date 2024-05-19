import 'package:dio/dio.dart';
import 'package:foot_mobile/src/data/data_source/remote/championship_service.dart';
import 'package:foot_mobile/src/data/repositories/championship_repository_impl.dart';
import 'package:foot_mobile/src/domain/interfaces/championship_repository.dart';
import 'package:foot_mobile/src/presentation/blocs/championship/championship_bloc.dart';
import 'package:foot_mobile/src/presentation/blocs/championships/championships_bloc.dart';
import 'package:foot_mobile/src/presentation/blocs/seasons/seasons_bloc.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  // Services
  locator.registerSingleton(Dio());
  locator.registerLazySingleton(() => FootballService());

  // Repositories
  locator.registerLazySingleton<ChampionshipRepository>(() => ChampionshipRepositoryImpl());

  // Bloc
  locator.registerLazySingleton(() => ChampionshipsBloc());
  locator.registerFactory(() => ChampionshipBloc());
  locator.registerLazySingleton(() => SeasonsBloc());
}
