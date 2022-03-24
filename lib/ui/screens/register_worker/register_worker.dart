import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahmoudproject/helpers/constants.dart';
import 'package:mahmoudproject/ui/custom_widget/buttons.dart';
import 'package:mahmoudproject/ui/custom_widget/my_text_form.dart';
import 'package:mahmoudproject/ui/screens/pin_code/pin_code_screen.dart';
import 'package:mahmoudproject/ui/sizes/sizes.dart';

class RegisterWorkerScreen extends StatelessWidget {
  const RegisterWorkerScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SizedBox(
          width: width(context),
          height: height(context),
          child: SingleChildScrollView(
            child: Padding(
              padding: Constants.listPaddingwithvirtical(context),
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
                  SizedBox(
                    height: height(context) * 0.02,
                  ),
                  const MyTextForm(
                    hint: 'رقم الهاتف او البريد الالكتروني',
                  ),
                    const SizedBox(
                    height: 10,
                  ),
                  const MyTextForm(
                    hint: 'الحرفه',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const MyTextForm(
                    hint: 'كلمة المرور',
                  ),
                  SizedBox(
                    height: height(context) * 0.04,
                  ),
                  customButtonWithArrow(
                    context: context,
                    selectedHeight: 0.07,
                    selectedWidth: 0.6,
                    title: 'استمرار',
                    tapped: () => Get.to(() =>  PinCodeWorkerScreen(),
                        transition: Transition.zoom),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
