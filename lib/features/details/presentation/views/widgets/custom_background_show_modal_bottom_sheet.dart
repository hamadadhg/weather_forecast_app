/*
import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/models/weather_search_model.dart';
import 'package:weather_forecast/core/utils/styles/style_to_colors.dart';
import 'package:weather_forecast/features/details/presentation/views/widgets/custom_tab_bar_show_modal_bottom_sheet.dart';

class CustomBackgroundShowModalBottomSheet extends StatelessWidget {
  const CustomBackgroundShowModalBottomSheet({
    super.key,
    required this.weatherSearchModel,
  });
  final WeatherSearchModel weatherSearchModel;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height * 0.4,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            StyleToColors.lightPurpleColor,
            StyleToColors.darkPurpleColor,
          ],
        ),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(height * 0.043),
        ),
      ),
      child: DefaultTabController(
        length: 2,
        child: CustomTabBarShowModalBottomSheet(
          weatherSearchModel: weatherSearchModel,
        ),
      ),
    );
  }
}
*/
