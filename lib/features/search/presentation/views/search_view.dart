import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/styles/style_to_colors.dart';
import 'package:weather_forecast/core/utils/components/background_color_component.dart';
import 'package:weather_forecast/features/search/presentation/views/widgets/custom_floating_action_button.dart';
import 'package:weather_forecast/features/search/presentation/views/widgets/custom_search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BackgroundColorComponent(
      child: Scaffold(
        backgroundColor: StyleToColors.transparentColor,
        body: CustomSearchViewBody(),
        floatingActionButton: CustomFloatingActionButton(),
      ),
    );
  }
}
