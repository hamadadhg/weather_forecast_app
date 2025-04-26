import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/models/weather_search_model.dart';
import 'package:weather_forecast/features/details/presentation/views/widgets/custom_forecast_list_view.dart';

class CustomHourlyForecast extends StatelessWidget {
  const CustomHourlyForecast({super.key, required this.weatherSearchModel});
  final WeatherSearchModel weatherSearchModel;
  @override
  Widget build(BuildContext context) {
    return CustomForecastListView(weatherSearchModel: weatherSearchModel);
  }
}
