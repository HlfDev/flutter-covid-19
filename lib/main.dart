import 'package:device_preview/device_preview.dart';
import 'package:covid_19/src/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'src/pages/home/home_page.dart';

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
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder,
      home: HomePage(),
    );
  }
}
