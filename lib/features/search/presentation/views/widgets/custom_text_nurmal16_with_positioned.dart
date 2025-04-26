import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/styles/style_to_texts.dart';

class CustomTextNurmal16WithPositioned extends StatelessWidget {
  const CustomTextNurmal16WithPositioned({
    super.key,
    this.bottomPercent,
    required this.text,
    this.textColor,
    required this.isLeft,
    required this.isRight,
  });
  final double? bottomPercent;
  final String text;
  final Color? textColor;
  final bool isRight, isLeft;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Positioned(
      bottom: size.height * (bottomPercent ?? 0.01),
      right:
          isRight
              ? (size.width < 750
                  ? size.width * 0.072
                  : size.width >= 750 && size.width < 1203
                  ? size.width * 0.04
                  : size.width * 0.022)
              : null,
      left:
          isLeft
              ? (size.width <
                      750 //mobile
                  ? size.width * 0.072
                  : size.width >= 750 &&
                      size.width <
                          1203 //tablet
                  ? size.width * 0.04
                  : size.width * 0.022)
              : null,
      child: Text(
        text.length > 10 ? text.substring(0, 10) : text,
        //.substring(give me letters just from 0 to length from this word)
        style: StyleToTexts.textStyleNurmal16(
          context: context,
        ).copyWith(color: textColor),
      ),
    );
  }
}
