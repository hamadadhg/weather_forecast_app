/*
import 'package:weather_forecast/core/utils/models/weather_hourly_forecast_model.dart';

class WeatherDailyForecastModel {
  num temperature, maxTemperature, minTemperature;
  String weatherState, dateToChangeItToDay;
  List<WeatherHourlyForecastModel> hourlyForecast;
  //in api forecastday value it(List), and it's contain on data(weather to 24 hours), so should create to this attributes Model(WeatherHourlyForecastModel) and in this Model(WeatherDailyForecastModel) will take this Model(WeatherHourlyForecastModel) values it from loop(for inside service file or clean code here you can use map)
  WeatherDailyForecastModel({
    required this.temperature,
    required this.maxTemperature,
    required this.minTemperature,
    required this.weatherState,
    required this.dateToChangeItToDay,
    required this.hourlyForecast,
  });
  factory WeatherDailyForecastModel.fromDailyJson({
    required Map<String, dynamic> json,
  }) {
    //value the forecastday key is List, but elements inside this List is Map so you should focus on(1: as List in WeatherSearchModel file, 2: dataType json parameter inside WeatherDailyForecastModel file)
    //json contain on values from ['forecast']['forecastday'][{values},{values},{values}], so now you will say to this attributes take from([{values},{values},{values}]) directly, you don't need to(['forecast']['forecastday']) because you finished from it in WeatherSearchModel file, don't worry because there is three values so should use loop(no problem you use .map in WeatherSearchModel file)
    return WeatherDailyForecastModel(
      temperature: json['day']['avgtemp_c'],
      maxTemperature: json['day']['maxtemp_c'],
      minTemperature: json['day']['mintemp_c'],
      weatherState: json['day']['condition']['text'],
      dateToChangeItToDay: json['date'],
      hourlyForecast:
          (json['hour'] as List)
              .map(
                (hourly) =>
                    WeatherHourlyForecastModel.fromHourlyJson(json: hourly),
              )
              .toList(),
    );
    //value the hour key is List, but elements inside this List is Map so you should focus on(1: as List in WeatherDailyForecastModel file, 2: dataType json parameter inside WeatherHourlyForecastModel file)
  }
}
*/
