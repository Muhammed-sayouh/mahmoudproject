import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahmoudproject/ui/custom_widget/buttons.dart';
import 'package:mahmoudproject/ui/screens/register_worker/register_worker.dart';
import 'package:mahmoudproject/ui/sizes/sizes.dart';

class RegisterTypeScreen extends StatefulWidget {
  const RegisterTypeScreen({Key key}) : super(key: key);

  @override
  State<RegisterTypeScreen> createState() => _RegisterTypeScreenState();
}

class _RegisterTypeScreenState extends State<RegisterTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,

      child: Scaffold(
        body: SizedBox(
          width: width(context),
          height: height(context),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height(context) * 0.15,
                ),
                SizedBox(
                  width: width(context) * .5,
                  height: height(context) * 0.3,
                  child: Image.asset(
                    'assets/images/logo.jpg',
                  ),
                ),
                SizedBox(height: height(context)*0.05,),
                customButtonWithArrow(
                  context: context,
                  selectedHeight: 0.07,
                  selectedWidth: 0.6,
                  title: 'تسجيل حرفي',
                tapped: ()=>Get.to(()=>const RegisterWorkerScreen(),transition: Transition.zoom),
                ),
                SizedBox(height: 15,),
                 customButtonWithArrow(
                  context: context,
                  selectedHeight: 0.07,
                  selectedWidth: 0.6,
                  title: 'تسجيل مستحدم',
                  tapped: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
