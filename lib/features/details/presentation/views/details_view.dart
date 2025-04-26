import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_forecast/core/utils/models/weather_search_model.dart';
import 'package:weather_forecast/core/utils/styles/style_to_colors.dart';
import 'package:weather_forecast/features/details/presentation/views/widgets/custom_details_view_body.dart';
import 'package:weather_forecast/core/utils/components/background_color_component.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherSearchModel =
        GoRouterState.of(context).extra as WeatherSearchModel;
    //this line enable me to get on Model from extra in GoRouter
    return BackgroundColorComponent(
      child: Scaffold(
        backgroundColor: StyleToColors.transparentColor,
        body: CustomDetailsViewBody(weatherSearchModel: weatherSearchModel),
      ),
    );
  }
}
