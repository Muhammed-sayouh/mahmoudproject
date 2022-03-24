import 'package:flutter/material.dart';
import 'package:mahmoudproject/ui/sizes/sizes.dart';

class Constants {
  static EdgeInsetsGeometry listPadding(BuildContext context) {
    return EdgeInsets.symmetric(horizontal: width(context) * 0.045);
  }

  static EdgeInsetsGeometry listPaddingwithvirtical(BuildContext context) {
    return EdgeInsets.symmetric(
        horizontal: width(context) * 0.05, vertical: height(context) * 0.02);
  }

  static EdgeInsetsGeometry smallPadding(BuildContext context) {
    return EdgeInsets.symmetric(
        horizontal: width(context) * 0.03, vertical: height(context) * 0.02);
  }
}
