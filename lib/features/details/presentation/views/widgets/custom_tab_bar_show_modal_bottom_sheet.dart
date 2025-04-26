/*
import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/models/weather_search_model.dart';
import 'package:weather_forecast/core/utils/styles/style_to_colors.dart';
import 'package:weather_forecast/features/details/presentation/views/widgets/custom_tab_bar_view_show_modal_bottom_sheet.dart';

class CustomTabBarShowModalBottomSheet extends StatelessWidget {
  const CustomTabBarShowModalBottomSheet({
    super.key,
    required this.weatherSearchModel,
  });
  final WeatherSearchModel weatherSearchModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TabBar(
          labelColor: StyleToColors.white70Color,
          //color to active label
          unselectedLabelColor: StyleToColors.white70Color,
          //color to inactive label
          indicatorColor: Color(0xffD1BCFD),
          //color to line(that is in the bottom labels)
          tabs: [
            Tab(child: FittedBox(child: Text('Hourly Forecast'))),
            Tab(child: FittedBox(child: Text('Daily Forecast'))),
            //i still use Tab(to save on height in Tab widget there is height attribute and it has on a default value you don't need to give it), and use FittedBox to make the Text inside TabBar is responsive text
          ],
        ),
        Expanded(
          child: CustomTabBarViewShowModalBottomSheet(
            weatherSearchModel: weatherSearchModel,
          ),
        ),
      ],
    );
  }
}
*/
