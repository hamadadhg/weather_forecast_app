/*
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_forecast/core/utils/styles/style_to_colors.dart';
import 'package:weather_forecast/core/utils/styles/style_to_texts.dart';
import 'package:weather_forecast/features/search/presentation/managers/cubits/weather_search_cubit.dart';
import 'package:weather_forecast/features/search/presentation/views/widgets/custom_icon_button.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
      child: ClipRRect(
        //the ClipRRect will work on all TextField and Container
        //i put ClipRRect because BackdropFilter widget, ClipRRect isn't contain on any shape it's just Clip the widgets
        borderRadius: BorderRadius.circular(size.height * 0.028),
        child: BackdropFilter(
          //the BackdropFilter make all think in the back it will disappear(camouflage)
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          //ImageFilter.blur contain on sigmaX and sigmaY, they determined what's the degree in camouflage do you want, x: horizontal and y: vertical
          child: Container(
            decoration: BoxDecoration(
              color: StyleToColors.whiteColor.withAlpha(26),
              borderRadius: BorderRadius.circular(size.height * 0.028),
              //this radius will work on all TextField
              border: Border.all(color: StyleToColors.whiteColor.withAlpha(51)),
            ),
            child: TextField(
              onChanged: (value) {
                if (value.isNotEmpty) {
                  context.read<WeatherSearchCubit>().getWeather(
                    cityName: value,
                  );
                }
              },
              style: StyleToTexts.textStyleNurmal16(context: context),
              cursorColor: StyleToColors.whiteColor,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: size.height * 0.014,
                ),
                prefixIcon: const CustomIconButton(),
                hintText: 'Search for a city or airport',
                hintStyle: StyleToTexts.textStyleNurmal16(context: context),
                border: InputBorder.none,
                //i don't need to underline border or all border
              ),
            ),
          ),
        ),
      ),
    );
  }
}
*/
