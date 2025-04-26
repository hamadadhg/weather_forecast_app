import 'package:flutter/material.dart';

class CustomClickOnBottomImage extends StatelessWidget {
  const CustomClickOnBottomImage({
    super.key,
    required this.imageUrl,
    required this.onTap,
  });
  final String imageUrl;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(imageUrl, height: height * 0.146),
    );
  }
}
