import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_forecast/core/utils/classes/asset_lotties/asset_lotties.dart';

Widget getLottiesHelper({
  required String weatherState,
  required BuildContext context,
  double percent = 0.155,
}) {
  double height = MediaQuery.sizeOf(context).height;
  String lotties;
  switch (weatherState.toLowerCase()) {
    case 'Sunny':
    case 'Clear':
      lotties = AssetLotties.sunnyLottie;
      break;
    case 'Partly cloudy':
      lotties = AssetLotties.partlyCloudyLottie;
      break;
    case 'Cloudy':
    case 'Overcast':
      lotties = AssetLotties.cloudyLottie;
      break;
    case 'Mist':
    case 'Fog':
    case 'Freezing fog':
      lotties = AssetLotties.fogLottie;
      break;
    case 'Patchy light drizzle':
    case 'Light drizzle':
    case 'Patchy light rain':
    case 'Light rain':
    case 'Light rain shower':
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Patchy rain possible':
    case 'Moderate or heavy rain shower':
      lotties = AssetLotties.rainLightLottie;
      break;
    case 'Heavy rain at times':
    case 'Heavy rain':
    case 'Torrential rain shower':
    case 'Moderate or heavy rain with thunder':
    case 'Patchy sleet possible':
    case 'Light sleet':
    case 'Moderate or heavy sleet':
    case 'Light sleet showers':
    case 'Moderate or heavy sleet showers':
    case 'Patchy freezing drizzle possible':
    case 'Light freezing rain':
    case 'Freezing drizzle':
    case 'Heavy freezing drizzle':
    case 'Moderate or heavy freezing rain':
      lotties = AssetLotties.rainHeavyLottie;
      break;
    case 'Patchy light snow':
    case 'Light snow':
    case 'Light snow showers':
    case 'Patchy snow possible':
      lotties = AssetLotties.snowLightLottie;
      break;
    case 'Patchy moderate snow':
    case 'Moderate snow':
    case 'Patchy heavy snow':
    case 'Heavy snow':
    case 'Moderate or heavy snow showers':
    case 'Ice pellets':
    case 'Light showers of ice pellets':
    case 'Moderate or heavy showers of ice pellets':
    case 'Blowing snow':
    case 'Blizzard':
      lotties = AssetLotties.snowHeavyLottie;
      break;
    case 'Thundery outbreaks possible':
    case 'Patchy light rain with thunder':
    case 'Patchy light snow with thunder':
    case 'Moderate or heavy snow with thunder':
      lotties = AssetLotties.thunderLottie;
      break;

    default:
      lotties = AssetLotties.sunnyLottie;
  }
  return Lottie.asset(lotties, height: height * percent, fit: BoxFit.cover);
}
