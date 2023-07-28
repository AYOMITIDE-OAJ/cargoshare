import 'package:flutter/material.dart';
import 'package:carbo/utils/custom_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomStyle.gradientBg,
      child: Center(
        child: Image.asset("assets/images/splash/splash-logo.png"),
      ),
    );
  }
}
