import 'package:flutter/material.dart';

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

bool isTablet(BuildContext context) {
  if (width(context) > 420 || height(context) > 750) {
    return true;
  } else {
    return false;
  }
}
