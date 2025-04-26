/*
import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/models/weather_daily_forecast_model.dart';
import 'package:weather_forecast/core/utils/styles/style_to_colors.dart';
import 'package:weather_forecast/features/details/presentation/views/widgets/custom_contain_daily_forecast_card_section.dart';

class CustomDailyForecastCard extends StatelessWidget {
  const CustomDailyForecastCard({
    super.key,
    required this.weatherDailyForecastModel,
  });
  final WeatherDailyForecastModel weatherDailyForecastModel;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.02,
        vertical: size.height * 0.05,
      ),
      padding: EdgeInsets.only(
        top: size.height * 0.019,
        bottom: size.height * 0.03,
      ),
      width: size.width * 0.2,
      decoration: BoxDecoration(
        color: StyleToColors.mediumPurpleColor2,
        borderRadius: BorderRadius.circular(size.height * 0.052),
        border: Border.all(color: StyleToColors.whiteColor.withAlpha(135)),
      ),
      child: CustomContainDailyForecastCardSection(
        weatherDailyForecastModel: weatherDailyForecastModel,
      ),
    );
  }
}
*/
