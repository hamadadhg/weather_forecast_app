import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/helpers/get_weather_based_on_location_helper.dart';
import 'package:weather_forecast/core/utils/styles/style_to_colors.dart';
import 'package:weather_forecast/features/search/presentation/views/widgets/custom_icon.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => getWeatherBasedOnLocationHelper(context: context),
      backgroundColor: StyleToColors.transparentColor,
      elevation: 0,
      child: const CustomIcon(iconData: Icons.location_on, percent: 0.075),
    );
  }
}
