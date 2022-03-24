import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahmoudproject/ui/sizes/sizes.dart';
import 'package:mahmoudproject/ui/style/colors.dart';


Widget customButton(
    {String title,
    Function tapped,
    BuildContext context,
    double selectedWidth,
    double selectedHeight}) {
  return InkWell(
    onTap: tapped,
    child: Container(
      width: width(context) * selectedWidth,
      height: height(context) * selectedHeight,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    ),
  );
}Widget customBlackButtonS(
    {String title,
    Function tapped,
    BuildContext context,
    double selectedWidth,
    double selectedHeight}) {
  return InkWell(
    onTap: tapped,
    child: Container(
      width: width(context) * selectedWidth,
      height: height(context) * selectedHeight,
      decoration: BoxDecoration(
        color: AppColors.blueColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    ),
  );
}

Widget customButtonWithArrow(
    {String title,
    Function tapped,
    BuildContext context,
    double selectedWidth,
    double selectedHeight}) {
  return InkWell(
    onTap: tapped,
    child: Container(
      width: width(context) * selectedWidth,
      height: height(context) * selectedHeight,
      decoration: BoxDecoration(
        color: Colors.blue[900],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const Icon(
              CupertinoIcons.forward,
              color: Colors.white,
              size: 30,
            )
          ],
        ),
      ),
    ),
  );
}
