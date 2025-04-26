/*
import 'package:weather_forecast/core/utils/models/weather_daily_forecast_model.dart';

class WeatherSearchModel {
  String cityName;
  List<WeatherDailyForecastModel> dailyForecast;
  //in api forecastday value it(List), and it's contain on data(weather to three days), so should create to this attributes Model(WeatherDailyForecastModel) and in this Model(WeatherSearchModel) will take this Model(WeatherDailyForecastModel) values it from loop(for inside service file or clean code here you can use map)
  WeatherSearchModel({required this.cityName, required this.dailyForecast});
  factory WeatherSearchModel.fromJson({required Map<String, dynamic> json}) {
    return WeatherSearchModel(
      cityName: json['location']['name'],
      dailyForecast:
          (json['forecast']['forecastday'] as List)
              .map(
                (daily) => WeatherDailyForecastModel.fromDailyJson(json: daily),
              )
              .toList(),
    );
    //value the forecastday key is List, but elements inside this List is Map so you should focus on(1: as List in WeatherSearchModel file, 2: dataType json parameter inside WeatherDailyForecastModel file)
  }
}
*/
