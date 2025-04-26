import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_forecast/core/utils/classes/asset_images/asset_images.dart';
import 'package:weather_forecast/core/utils/helpers/get_lotties_helper.dart';
import 'package:weather_forecast/core/utils/helpers/push_go_router_helper.dart';
import 'package:weather_forecast/core/utils/models/weather_search_model.dart';
import 'package:weather_forecast/core/utils/styles/style_to_colors.dart';
import 'package:weather_forecast/core/utils/styles/style_to_texts.dart';
import 'package:weather_forecast/features/search/presentation/views/widgets/custom_text_nurmal16_with_positioned.dart';

class CustomSuccessState extends StatelessWidget {
  const CustomSuccessState({super.key, required this.weatherSearchModel});
  final WeatherSearchModel weatherSearchModel;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    final todayWeather = weatherSearchModel.dailyForecast[0];
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.03),
      child: GestureDetector(
        onTap: () {
          pushGoRouterHelper(
            context: context,
            weatherSearchModel: weatherSearchModel,
          );
        },
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(AssetImages.shapeContainer),
              Positioned(
                right: size.width * 0.017,
                child: getLottiesHelper(
                  weatherState: todayWeather.weatherState,
                  context: context,
                ),
              ),
              Positioned(
                top: size.height * 0.042,
                left:
                    size.width <
                            750 //mobile
                        ? size.width * 0.072
                        : size.width >= 750 &&
                            size.width <
                                1203 //tablet
                        ? size.width * 0.04
                        : size.width * 0.022,
                child: Text(
                  '${todayWeather.temperature.round()}°',
                  style: StyleToTexts.textStyleBold44(context: context),
                ),
              ),
              CustomTextNurmal16WithPositioned(
                text:
                    'H:${todayWeather.maxTemperature.round()}°  L:${todayWeather.minTemperature.round()}°',
                bottomPercent: 0.035,
                isLeft: true,
                isRight: false,
              ),
              CustomTextNurmal16WithPositioned(
                text: weatherSearchModel.cityName,
                isLeft: true,
                isRight: false,
              ),
              CustomTextNurmal16WithPositioned(
                text: todayWeather.weatherState,
                textColor: StyleToColors.whiteColor,
                isLeft: false,
                isRight: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
