/*
import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/helpers/date_format_helper.dart';
import 'package:weather_forecast/core/utils/helpers/get_lotties_helper.dart';
import 'package:weather_forecast/core/utils/models/weather_daily_forecast_model.dart';
import 'package:weather_forecast/core/utils/styles/style_to_texts.dart';

class CustomContainDailyForecastCardSection extends StatelessWidget {
  const CustomContainDailyForecastCardSection({
    super.key,
    required this.weatherDailyForecastModel,
  });
  final WeatherDailyForecastModel weatherDailyForecastModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          dateFormatHelper(
            formatThatYouWantIt: 'EEE',
            stringDateTime: weatherDailyForecastModel.dateToChangeItToDay,
          ).toUpperCase(),
          style: StyleToTexts.textStyleNurmal17(context: context),
        ),
        getLottiesHelper(
          weatherState: weatherDailyForecastModel.weatherState,
          context: context,
          percent: 0.06,
        ),
        Text(
          '${weatherDailyForecastModel.temperature.round()}°',
          style: StyleToTexts.textStyleNurmal27(context: context),
        ),
      ],
    );
  }
}
*/
