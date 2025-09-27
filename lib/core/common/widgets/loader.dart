import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loader extends StatelessWidget {
  final String animationPath;
  final double height;
  final double width;

  const Loader({
    super.key,
    required this.animationPath,
    this.height = 120.0,
    this.width = 120.0,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        animationPath,
        height: height,
        width: width,
      ),
    );
  }
}
