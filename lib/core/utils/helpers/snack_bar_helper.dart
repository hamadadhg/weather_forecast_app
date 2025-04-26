import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/constant/duration_variables.dart';
import 'package:weather_forecast/core/utils/styles/style_to_colors.dart';
import 'package:weather_forecast/core/utils/styles/style_to_texts.dart';

void snackBarHelper({required BuildContext context, required String text}) {
  double height = MediaQuery.sizeOf(context).height;
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: StyleToColors.redColor,
      behavior: SnackBarBehavior.floating,
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(height * 0.015),
      ),
      action: SnackBarAction(
        label: 'OK',
        textColor: StyleToColors.whiteColor,
        backgroundColor: StyleToColors.whiteColor.withAlpha(50),
        disabledBackgroundColor: StyleToColors.white54Color,
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
      duration: kSevenSeconds,
      content: Text(
        text,
        style: StyleToTexts.textStyleNormal15(context: context),
      ),
    ),
  );
}
