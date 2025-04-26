import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/models/weather_search_model.dart';
import 'package:weather_forecast/core/utils/styles/style_to_texts.dart';

class CustomAllTextsSection extends StatelessWidget {
  const CustomAllTextsSection({super.key, required this.weatherSearchModel});
  final WeatherSearchModel weatherSearchModel;
  @override
  Widget build(BuildContext context) {
    final todayWeather = weatherSearchModel.dailyForecast[0];
    double height = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        Text(
          weatherSearchModel.cityName,
          textAlign: TextAlign.center,
          style: StyleToTexts.textStyleNurmal30(context: context),
        ),
        SizedBox(height: height * 0.015),
        Text(
          '${todayWeather.temperature.round()}°',
          style: StyleToTexts.textStyleBold80(context: context),
        ),
        SizedBox(height: height * 0.015),
        Text(
          todayWeather.weatherState,
          style: StyleToTexts.textStyleNurmal16(context: context),
        ),
        SizedBox(height: height * 0.009),
        Text(
          'H:${todayWeather.maxTemperature.round()}°   L:${todayWeather.minTemperature.round()}°',
          style: StyleToTexts.textStyleNurmal19(context: context),
        ),
      ],
    );
  }
}
