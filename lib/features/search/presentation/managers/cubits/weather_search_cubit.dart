/*
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_forecast/core/utils/data/repository/weather_repository_implementation.dart';
import 'package:weather_forecast/features/search/presentation/managers/cubits/weather_search_state.dart';

class WeatherSearchCubit extends Cubit<WeatherSearchState> {
  WeatherSearchCubit({required this.weatherRepositoryImplementation})
    : super(WeatherSearchInitialState());
  final WeatherRepositoryImplementation weatherRepositoryImplementation;
  Future<void> getWeather({required String cityName}) async {
    emit(WeatherSearchLoadingState());
    final result = await weatherRepositoryImplementation.fetchWeather(
      cityName: cityName,
    );
    return result.fold(
      (error) => emit(
        WeatherSearchFailureState(
          errorMessageInFailureState: error.errorMessageInErrorMessages,
        ),
      ),
      (weather) => emit(
        WeatherSearchSuccessState(successMessageInSuccessState: weather),
      ),
    );
  }
}
*/
