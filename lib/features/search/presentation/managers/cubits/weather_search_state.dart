import 'package:weather_forecast/core/utils/models/weather_search_model.dart';

abstract class WeatherSearchState {}

class WeatherSearchInitialState extends WeatherSearchState {}

class WeatherSearchLoadingState extends WeatherSearchState {}

class WeatherSearchSuccessState extends WeatherSearchState {
  final WeatherSearchModel successMessageInSuccessState;
  WeatherSearchSuccessState({required this.successMessageInSuccessState});
}

class WeatherSearchFailureState extends WeatherSearchState {
  final String errorMessageInFailureState;
  WeatherSearchFailureState({required this.errorMessageInFailureState});
}
