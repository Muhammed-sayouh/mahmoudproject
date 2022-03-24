import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahmoudproject/ui/screens/login_screen/login_screen.dart';
import 'package:mahmoudproject/ui/sizes/sizes.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    _controller.forward();
    _goToSecondScreen();
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: height(context),
        width: width(context),

        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width(context) * 0.15),
          child: FadeTransition(
            opacity: _controller,
            child: ScaleTransition(
              scale: _controller,
              child: Image.asset(
                'assets/images/logo.jpg',
              ),
            ),
          ),
        ),
      ),
    );
  }

  //Helper Functions
  _goToSecondScreen() async {
    Future.delayed(const Duration(seconds: 3)).then((value) => Get.offAll(() =>
          const LoginScreen(),
          transition: Transition.zoom,
        ));
  }
}
