import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'app/core/core.dart';
import 'app/pages/home/home_page.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => MaterialAppWidget(), // Wrap your app
  ));
}

class MaterialAppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder,
      home: AnimatedSplashScreen(
          duration: 3000,
          splashIconSize: 500,
          splash: Image.asset(
            AppImages.virus,
          ),
          nextScreen: HomePage(),
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: AppColors.blueWhite),
    );
  }
}
