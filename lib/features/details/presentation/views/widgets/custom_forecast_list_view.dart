import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/models/weather_search_model.dart';
import 'package:weather_forecast/features/details/presentation/views/widgets/custom_hourly_forecast_card.dart';

class CustomForecastListView extends StatelessWidget {
  const CustomForecastListView({super.key, required this.weatherSearchModel});
  final WeatherSearchModel weatherSearchModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: weatherSearchModel.dailyForecast[0].hourlyForecast.length,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return CustomHourlyForecastCard(
          weatherHourlyForecastModel:
              weatherSearchModel.dailyForecast[0].hourlyForecast[index],
        );
      },
    );
  }
}
