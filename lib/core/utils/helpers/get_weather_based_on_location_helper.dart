// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_forecast/core/utils/helpers/snack_bar_helper.dart';
import 'package:weather_forecast/features/search/presentation/managers/cubits/weather_search_cubit.dart';

Future<void> getWeatherBasedOnLocationHelper({
  required BuildContext context,
}) async {
  bool thisCityCanIDeterminedLocationIt =
      await Geolocator.isLocationServiceEnabled();
  //this parameter to check this city can i determined location it or no
  if (!thisCityCanIDeterminedLocationIt) {
    snackBarHelper(
      context: context,
      text: 'Can\'t Determine Location Your City',
    );
    return;
  }
  LocationPermission locationPermission = await Geolocator.checkPermission();
  //first should take permission from user to determined his location
  if (locationPermission == LocationPermission.denied) {
    locationPermission = await Geolocator.requestPermission();
    //if permission is denied so send another permission
    if (locationPermission == LocationPermission.denied) {
      snackBarHelper(
        context: context,
        text:
            'You Denied Important Permission, This Permission Enable Me To Determine Your Location',
      );
      return;
    } //this method if user denied the permission again
  }
  if (locationPermission == LocationPermission.deniedForever) {
    snackBarHelper(
      context: context,
      text:
          'Permissoin Is Permanently Denied, Please Enable It From Your Settings',
    );
    await Geolocator.openAppSettings();
    return;
    //this method if permissoin is permanently denied, so i will take the user to his settings to enable me determine his location
  }
  Position position = await Geolocator.getCurrentPosition(
    locationSettings: const LocationSettings(accuracy: LocationAccuracy.high),
  ); //get on current location for user
  context.read<WeatherSearchCubit>().getWeather(
    cityName: '${position.latitude},${position.longitude}',
  ); //send send longLine and widthLine for user instead of cityName
}
