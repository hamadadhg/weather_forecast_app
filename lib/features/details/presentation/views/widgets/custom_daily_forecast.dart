import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/models/weather_search_model.dart';
import 'package:weather_forecast/features/details/presentation/views/widgets/custom_daily_forecast_card.dart';

class CustomDailyForecast extends StatelessWidget {
  const CustomDailyForecast({super.key, required this.weatherSearchModel});
  final WeatherSearchModel weatherSearchModel;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CustomDailyForecastCard(
            weatherDailyForecastModel: weatherSearchModel.dailyForecast[0],
          ),
          CustomDailyForecastCard(
            weatherDailyForecastModel: weatherSearchModel.dailyForecast[1],
          ),
          CustomDailyForecastCard(
            weatherDailyForecastModel: weatherSearchModel.dailyForecast[2],
          ),
        ],
      ),
    );
  }
}
