import 'package:flutter/material.dart';
import 'package:weather_forecast/core/utils/styles/style_to_colors.dart';

class BackgroundColorComponent extends StatelessWidget {
  const BackgroundColorComponent({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            StyleToColors.littlePurpleColor,
            StyleToColors.mediumPurpleColor1,
            StyleToColors.deepPurpleColor,
          ],
        ),
      ),
      child: child,
    );
  }
}
