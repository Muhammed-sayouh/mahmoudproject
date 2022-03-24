import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData getTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Cairo',
    // appBarTheme: AppBarTheme(color: AppColors.greenColor, elevation: 0),
    // ignore: deprecated_member_use
    primaryColor: AppColors.blueColor,
    focusColor: AppColors.darkGrayColor,
    // inputDecorationTheme: InputDecorationTheme(
    //   fillColor: AppColors.darkGrayColor,
    //   filled: true,
    //   focusColor: AppColors.darkGrayColor,
      // focusedBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(50),
        // borderSide: BorderSide(
        //   color: AppColors.purpleColor,
        // ),
      // ),
      // contentPadding: const EdgeInsets.all(13),
      // border: const OutlineInputBorder(
      //   borderRadius: BorderRadius.all(
      //     Radius.circular(50.0),
      //   ),
      //   borderSide: BorderSide(
      //     style: BorderStyle.none,
      //   ),
      // ),
      // disabledBorder: OutlineInputBorder(
      //   borderRadius: const BorderRadius.all(
      //     Radius.circular(50.0),
      //   ),
      //   borderSide: BorderSide(
      //     width: 1,
      //     color: AppColors.purpleColor,
      //     style: BorderStyle.solid,
      //   ),
      // ),
      // enabledBorder: OutlineInputBorder(
      //   borderRadius: const BorderRadius.all(
      //     Radius.circular(50.0),
      //   ),
      //   borderSide: BorderSide(
      //     width: 1,
      //     color: AppColors.purpleColor,
      //     style: BorderStyle.solid,
      //   ),
      // ),
    // );
  );
}
