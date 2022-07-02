import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahmoudproject/helpers/constants.dart';
import 'package:mahmoudproject/ui/custom_widget/home_services.dart';
import 'package:mahmoudproject/ui/screens/category_details/category_details_screen.dart';
import 'package:mahmoudproject/ui/sizes/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: height(context),
        width: width(context),
        child: Padding(
          padding: Constants.listPaddingwithvirtical(context),
          child: Column(
            children: [
              SizedBox(
                height: height(context) * 0.04,
              ),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'اختر الخدمه التي تريدها',
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height(context) * 0.02,
              ),
              Expanded(
                child: GridView.builder(
                    itemCount: 1,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 1 / 1.5),
                    itemBuilder: (BuildContext context, int index) =>
                        CategoriesWidget(
                          image: 'assets/images/ele.jpg',
                          onTap: () =>Get.to(()=>CategoryDetailsScreen(),transition: Transition.zoom),
                          title: "كهرباء",
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
