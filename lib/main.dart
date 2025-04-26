import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_forecast/core/utils/data/repository/weather_repository_implementation.dart';
import 'package:weather_forecast/core/utils/routers/app_routers.dart';
import 'package:weather_forecast/core/utils/service_locator/service_locator.dart';
import 'package:weather_forecast/features/search/presentation/managers/cubits/weather_search_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.bottom],
  );
  serviceLocator();
  runApp(const WeatherForecast());
}

class WeatherForecast extends StatelessWidget {
  const WeatherForecast({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => WeatherSearchCubit(
            weatherRepositoryImplementation:
                getIt.get<WeatherRepositoryImplementation>(),
          ),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouters.router,
      ),
    );
  }
}
