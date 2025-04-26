class WeatherHourlyForecastModel {
  String time, weatherState;
  num temperature;
  WeatherHourlyForecastModel({
    required this.time,
    required this.temperature,
    required this.weatherState,
  });
  factory WeatherHourlyForecastModel.fromHourlyJson({
    required Map<String, dynamic> json,
  }) {
    //value the hour key is List, but elements inside this List is Map so you should focus on(1: as List in WeatherDailyForecastModel file, 2: dataType json parameter inside WeatherHourlyForecastModel file)
    //json contain on values from ['hour'][{values},{values},{values},..], so now you will say to this attributes take from([{values},{values},{values},..]) directly, you don't need to(['hour']) because you finished from it in WeatherDailyForecastModel file, don't worry because there is 24 hours values so should use loop(no problem you use .map in WeatherDailyForecastModel file)
    return WeatherHourlyForecastModel(
      time: json['time'],
      temperature: json['temp_c'],
      weatherState: json['condition']['text'],
    );
  }
}
