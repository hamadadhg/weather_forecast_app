import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/models/weather_search_model.dart';
import 'package:weather_forecast/features/search/presentation/views/widgets/custom_success_state.dart';

class CustomDesktopLayout extends StatelessWidget {
  const CustomDesktopLayout({super.key, required this.weatherSearchModel});
  final WeatherSearchModel weatherSearchModel;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomSuccessState(weatherSearchModel: weatherSearchModel),
    );
  }
}
