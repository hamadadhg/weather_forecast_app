import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_forecast/core/utils/constant/string_variables.dart';
import 'package:weather_forecast/core/utils/models/weather_search_model.dart';

void pushGoRouterHelper({
  required BuildContext context,
  required WeatherSearchModel weatherSearchModel,
}) {
  GoRouter.of(context).push(kDetailsViewRouter, extra: weatherSearchModel);
}
