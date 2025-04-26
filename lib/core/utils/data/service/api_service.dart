import 'package:dio/dio.dart';
import 'package:weather_forecast/core/utils/models/weather_search_model.dart';

class ApiService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1/forecast.json';
  final String apiKey = 'f2ceb25bee0f4d6492b113136242307';
  ApiService({required this.dio});
  Future<WeatherSearchModel> weatherGetRequest({
    required String endPoint,
  }) async {
    final response = await dio.get('$baseUrl?key=$apiKey&$endPoint');
    return WeatherSearchModel.fromJson(json: response.data);
  }
}
