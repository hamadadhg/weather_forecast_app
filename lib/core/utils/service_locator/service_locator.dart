import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_forecast/core/utils/data/repository/weather_repository_implementation.dart';
import 'package:weather_forecast/core/utils/data/service/api_service.dart';

final getIt = GetIt.instance;
void serviceLocator() {
  getIt.registerSingleton<WeatherRepositoryImplementation>(
    WeatherRepositoryImplementation(apiService: ApiService(dio: Dio())),
  );
}
