import 'package:flutter/material.dart';
import 'package:mahmoudproject/ui/sizes/sizes.dart';

class CategoriesWidget extends StatelessWidget {
  final String title;
  final String image;
  final void Function() onTap;

  const CategoriesWidget({Key key, this.title, this.image, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: SizedBox(
            height: height(context)*0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: width(context)*0.42,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image.asset(
                        image,
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  height: height(context) * 0.02,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color:Colors.blue[900],
                      fontSize:isTablet(context)?22 :18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}