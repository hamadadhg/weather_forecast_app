// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/classes/asset_images/asset_images.dart';
import 'package:weather_forecast/core/utils/helpers/get_weather_based_on_location_helper.dart';
import 'package:weather_forecast/core/utils/helpers/pop_go_router_helper.dart';
import 'package:weather_forecast/core/utils/helpers/show_modal_bottom_sheet_helper.dart';
import 'package:weather_forecast/core/utils/models/weather_search_model.dart';
import 'package:weather_forecast/features/details/presentation/views/widgets/custom_click_on_bottom_image.dart';

class CustomBottomThreeImagesSection extends StatelessWidget {
  const CustomBottomThreeImagesSection({
    super.key,
    required this.weatherSearchModel,
  });
  final WeatherSearchModel weatherSearchModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomClickOnBottomImage(
          imageUrl: AssetImages.locationImage,
          onTap: () async {
            await getWeatherBasedOnLocationHelper(context: context);
            popGoRouterHelper(context: context);
          },
        ),
        CustomClickOnBottomImage(
          imageUrl: AssetImages.plusButtonImage,
          onTap: () {
            popGoRouterHelper(context: context);
          },
        ),
        CustomClickOnBottomImage(
          imageUrl: AssetImages.optionsImage,
          onTap: () {
            showModalBottomSheetHelper(
              context: context,
              weatherSearchModel: weatherSearchModel,
            );
          },
        ),
      ],
    );
  }
}
