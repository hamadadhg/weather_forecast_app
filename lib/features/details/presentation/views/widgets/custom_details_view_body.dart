/*
import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/classes/asset_images/asset_images.dart';
import 'package:weather_forecast/core/utils/models/weather_search_model.dart';
import 'package:weather_forecast/features/details/presentation/views/widgets/custom_all_texts_section.dart';
import 'package:weather_forecast/features/details/presentation/views/widgets/custom_bottom_three_images_section.dart';

class CustomDetailsViewBody extends StatelessWidget {
  const CustomDetailsViewBody({super.key, required this.weatherSearchModel});
  final WeatherSearchModel weatherSearchModel;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return CustomScrollView(
      //because i'm afaird the cityName come very long
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              SizedBox(height: height * 0.035),
              CustomAllTextsSection(weatherSearchModel: weatherSearchModel),
              SizedBox(height: height * 0.025),
              Image.asset(AssetImages.houseImage, height: height * 0.35),
              const Expanded(child: SizedBox()),
              CustomBottomThreeImagesSection(
                weatherSearchModel: weatherSearchModel,
              ),
              SizedBox(height: height * 0.01),
            ],
          ),
        ),
      ],
    );
  }
}
*/
