/*
import 'package:flutter/widgets.dart';
import 'package:weather_forecast/core/utils/helpers/date_format_helper.dart';
import 'package:weather_forecast/core/utils/helpers/get_lotties_helper.dart';
import 'package:weather_forecast/core/utils/models/weather_hourly_forecast_model.dart';
import 'package:weather_forecast/core/utils/styles/style_to_texts.dart';

class CustomContainHourlyForecastCard extends StatelessWidget {
  const CustomContainHourlyForecastCard({
    super.key,
    required this.weatherHourlyForecastModel,
  });
  final WeatherHourlyForecastModel weatherHourlyForecastModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          dateFormatHelper(
            stringDateTime: weatherHourlyForecastModel.time,
            formatThatYouWantIt: 'HH:mm',
          ),
          style: StyleToTexts.textStyleNurmal17(context: context),
        ),
        getLottiesHelper(
          weatherState: weatherHourlyForecastModel.weatherState,
          context: context,
          percent: 0.06,
        ),
        Text(
          '${weatherHourlyForecastModel.temperature.round()}°',
          style: StyleToTexts.textStyleNurmal27(context: context),
        ),
      ],
    );
  }
}
*/
