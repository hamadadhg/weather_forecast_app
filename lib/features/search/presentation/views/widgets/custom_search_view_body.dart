import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_forecast/core/utils/styles/style_to_texts.dart';
import 'package:weather_forecast/features/search/presentation/managers/cubits/weather_search_cubit.dart';
import 'package:weather_forecast/features/search/presentation/managers/cubits/weather_search_state.dart';
import 'package:weather_forecast/features/search/presentation/views/widgets/custom_error_state.dart';
import 'package:weather_forecast/features/search/presentation/views/widgets/custom_initial_state.dart';
import 'package:weather_forecast/features/search/presentation/views/widgets/custom_loading_state.dart';
import 'package:weather_forecast/features/search/presentation/views/widgets/custom_success_state.dart';
import 'package:weather_forecast/features/search/presentation/views/widgets/custom_text_field.dart';

class CustomSearchViewBody extends StatelessWidget {
  const CustomSearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: size.height * 0.025),
        Padding(
          padding: EdgeInsets.only(left: size.width * 0.1),
          child: Text(
            'Weather',
            style: StyleToTexts.textStyleLight27(context: context),
          ),
        ),
        SizedBox(height: size.height * 0.023),
        const CustomTextField(),
        BlocBuilder<WeatherSearchCubit, WeatherSearchState>(
          builder: (context, state) {
            if (state is WeatherSearchSuccessState) {
              return CustomSuccessState(
                weatherSearchModel: state.successMessageInSuccessState,
              );
            } else if (state is WeatherSearchFailureState) {
              return CustomErrorState(
                errorText: state.errorMessageInFailureState,
              );
            } else if (state is WeatherSearchLoadingState) {
              return const CustomLoadingState();
            } else {
              return const CustomInitialState();
            }
          },
        ),
      ],
    );
  }
}
