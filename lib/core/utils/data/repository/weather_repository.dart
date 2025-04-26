import 'package:dartz/dartz.dart';
import 'package:weather_forecast/core/utils/errors/error_messages.dart';
import 'package:weather_forecast/core/utils/models/weather_search_model.dart';

abstract class WeatherRepository {
  Future<Either<ErrorMessages, WeatherSearchModel>> fetchWeather({
    required String cityName,
  });
}
