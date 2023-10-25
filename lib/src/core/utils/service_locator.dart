import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kitty_cat/src/config/routes/app_router.dart';

import '../api/api_consumer.dart';
import '../api/app_interceptors.dart';
import '../api/dio_consumer.dart';

final GetIt serviceLocator = GetIt.instance;

void setUpServiceLocator() {
  _setUpForExternal();

  _setUpForCore();

  _setUpForConfig();
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
  serviceLocator.registerLazySingleton<ApiConsumer>(
    () => DioConsumer(client: serviceLocator.get<Dio>()),
  );
}

void _setUpForConfig() {
  serviceLocator.registerLazySingleton<AppRouter>(() => AppRouter());
}
