/*
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/models/weather_search_model.dart';
import 'package:weather_forecast/features/details/presentation/views/widgets/custom_background_show_modal_bottom_sheet.dart';

class CustomShowModalBottomSheet extends StatelessWidget {
  const CustomShowModalBottomSheet({
    super.key,
    required this.weatherSearchModel,
  });
  final WeatherSearchModel weatherSearchModel;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return ClipRRect(
      //the ClipRRect will work on all TextField and Container
      //i put ClipRRect because BackdropFilter widget, ClipRRect isn't contain on any shape it's just Clip the widgets
      borderRadius: BorderRadius.vertical(top: Radius.circular(height * 0.043)),
      //.vertical(top:) it's mean i want BorderRadius(1: vertical and 2: top(it's mean topLeft and topRight)), it's short instead of use BorderRadius.only(topLeft:,topRight:)
      child: BackdropFilter(
        //the BackdropFilter make all think in the back it will disappear(camouflage)
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        //ImageFilter.blur contain on sigmaX and sigmaY, they determined what's the degree in camouflage do you want, x: horizontal and y: vertical
        child: CustomBackgroundShowModalBottomSheet(
          weatherSearchModel: weatherSearchModel,
        ),
      ),
    );
  }
}
*/
