import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kitty_cat/src/config/routes/app_router.dart';
import 'package:kitty_cat/src/core/network/network_info.dart';
import 'package:kitty_cat/src/core/network/network_info_impl.dart';
import 'package:kitty_cat/src/features/home/data/datasources/home_datasource.dart';
import 'package:kitty_cat/src/features/home/data/datasources/home_datasource_impl.dart';
import 'package:kitty_cat/src/features/home/data/repositories/home_repo_impl.dart';
import 'package:kitty_cat/src/features/home/domain/repositories/home_repo.dart';
import 'package:kitty_cat/src/features/home/domain/usecases/get_articles.dart';
import 'package:kitty_cat/src/features/home/presentation/cubit/home_cubit.dart';

import '../api/api_consumer.dart';
import '../api/app_interceptors.dart';
import '../api/dio_consumer.dart';

final GetIt serviceLocator = GetIt.instance;

void setUpServiceLocator() {
  _setUpForExternal();

  _setUpForCore();

  _setUpForConfig();

  _setUpForDatasources();

  _setUpForRepos();

  _setUpForUseCases();

  _seyUpForCubits();
}

void _setUpForExternal() {
  serviceLocator.registerLazySingleton<Dio>(() => Dio());

  serviceLocator.registerLazySingleton<InternetConnectionChecker>(
    () => InternetConnectionChecker(),
  );

  serviceLocator.registerLazySingleton<AppInterceptors>(
    () => AppInterceptors(),
  );

  serviceLocator.registerLazySingleton<LogInterceptor>(
    () => LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      error: true,
    ),
  );
}

void _setUpForCore() {
  serviceLocator.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(
        connectionChecker: serviceLocator.get<InternetConnectionChecker>(),
      ));

  serviceLocator.registerLazySingleton<ApiConsumer>(
    () => DioConsumer(client: serviceLocator.get<Dio>()),
  );
}

void _setUpForConfig() {
  serviceLocator.registerLazySingleton<AppRouter>(() => AppRouter());
}

void _setUpForDatasources() {
  serviceLocator.registerLazySingleton<HomeDataSource>(
    () => HomeDataSourceImpl(apiConsumer: serviceLocator.get<ApiConsumer>()),
  );
}

void _setUpForRepos() {
  serviceLocator.registerLazySingleton<HomeRepo>(
    () => HomeRepoImpl(
      networkInfo: serviceLocator.get<NetworkInfo>(),
      homeDataSource: serviceLocator.get<HomeDataSource>(),
    ),
  );
}

void _setUpForUseCases() {
  serviceLocator.registerLazySingleton<GetArticlesUseCase>(
    () => GetArticlesUseCase(homeRepo: serviceLocator.get<HomeRepo>()),
  );
}

void _seyUpForCubits() {
  serviceLocator.registerFactory<HomeCubit>(
    () => HomeCubit(
      getArticlesUseCase: serviceLocator.get<GetArticlesUseCase>(),
    ),
  );
}
