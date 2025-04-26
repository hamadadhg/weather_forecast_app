import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/classes/asset_images/asset_images.dart';
import 'package:weather_forecast/core/utils/styles/style_to_texts.dart';
import 'package:weather_forecast/features/search/presentation/views/widgets/custom_top_padding.dart';

class CustomErrorState extends StatelessWidget {
  const CustomErrorState({super.key, required this.errorText});
  final String errorText;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return CustomTopPadding(
      child: Center(
        child: Column(
          children: [
            Image.asset(AssetImages.warningImage, height: size.height * 0.1),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.025),
              child: Text(
                errorText,
                style: StyleToTexts.textStyleNormal14(context: context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
