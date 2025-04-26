import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weather_forecast/core/utils/data/repository/weather_repository.dart';
import 'package:weather_forecast/core/utils/data/service/api_service.dart';
import 'package:weather_forecast/core/utils/errors/error_messages.dart';
import 'package:weather_forecast/core/utils/models/weather_search_model.dart';

class WeatherRepositoryImplementation implements WeatherRepository {
  final ApiService apiService;
  WeatherRepositoryImplementation({required this.apiService});
  @override
  Future<Either<ErrorMessages, WeatherSearchModel>> fetchWeather({
    required String cityName,
  }) async {
    try {
      final fullResponse = await apiService.weatherGetRequest(
        endPoint: 'q=$cityName&days=3&aqi=no&alerts=no',
      );
      return right(fullResponse);
    } on DioException catch (e) {
      return left(ErrorServer.fromDioException(dioException: e));
    } on Exception catch (e) {
      return left(ErrorMessages(errorMessageInErrorMessages: e.toString()));
    }
  }
}
