import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahmoudproject/helpers/constants.dart';
import 'package:mahmoudproject/ui/custom_widget/buttons.dart';
import 'package:mahmoudproject/ui/screens/home_screen_worker/home_screen_worker.dart';

import 'package:mahmoudproject/ui/screens/register_type/register_type.dart';
import 'package:mahmoudproject/ui/sizes/sizes.dart';
import 'package:mahmoudproject/ui/style/colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

// ignore: must_be_immutable
class PinCodeWorkerScreen extends StatelessWidget {
  PinCodeWorkerScreen({Key key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  TextEditingController pinCode;

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
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: width(context) * 0.13),
                    child: Form(
                      key: _formKey,
                      child: PinCodeTextField(
                        controller: pinCode,
                        appContext: context,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'من فضلك ادخل الكود';
                          } else if (value.length < 4) {
                            return 'يرجي اكمال الكود';
                          } else {
                            return null;
                          }
                        },
                        length: 4,
                        onChanged: (val) {},
                        cursorColor: AppColors.blueColor,
                        enableActiveFill: true,
                        keyboardType: TextInputType.number,
                        backgroundColor: Colors.white,
                        pinTheme: PinTheme(
                          borderRadius: BorderRadius.circular(10),
                          shape: PinCodeFieldShape.box,
                          inactiveColor: AppColors.darkGrayColor,
                          activeColor: AppColors.darkGrayColor,
                          activeFillColor: AppColors.darkGrayColor,
                          disabledColor: AppColors.darkGrayColor,
                          inactiveFillColor: AppColors.darkGrayColor,
                          selectedColor: AppColors.darkGrayColor,
                          selectedFillColor: AppColors.darkGrayColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  customButtonWithArrow(
                    context: context,
                    selectedHeight: 0.07,
                    selectedWidth: 0.6,
                    title: 'تحقق',
                    tapped: () => Get.to(() => const WorkerHomeScreen(),
                        transition: Transition.zoom),
                  ),
                   const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'إعادة إرسال الرمز؟',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
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
