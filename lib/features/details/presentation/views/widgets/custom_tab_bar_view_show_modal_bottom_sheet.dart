import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/models/weather_search_model.dart';
import 'package:weather_forecast/features/details/presentation/views/widgets/custom_hourly_forecast.dart';
import 'package:weather_forecast/features/details/presentation/views/widgets/custom_daily_forecast.dart';

class CustomTabBarViewShowModalBottomSheet extends StatelessWidget {
  const CustomTabBarViewShowModalBottomSheet({
    super.key,
    required this.weatherSearchModel,
  });
  final WeatherSearchModel weatherSearchModel;
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        CustomHourlyForecast(weatherSearchModel: weatherSearchModel),
        CustomDailyForecast(weatherSearchModel: weatherSearchModel),
      ],
    );
  }
}
