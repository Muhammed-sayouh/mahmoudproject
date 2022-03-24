import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mahmoudproject/ui/screens/splash_screen.dart/splash.dart';
import 'package:mahmoudproject/ui/style/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getTheme(),
      home: const SplashScreen(),
    );
  }
}
