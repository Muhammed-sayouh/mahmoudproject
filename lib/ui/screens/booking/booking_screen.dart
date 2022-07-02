import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahmoudproject/ui/custom_widget/buttons.dart';
import 'package:mahmoudproject/ui/custom_widget/my_text_form.dart';
import 'package:mahmoudproject/ui/sizes/sizes.dart';

import '../../style/colors.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key key}) : super(key: key);

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  DateTime selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2023));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  List<String> _data = ['00.00', '01:00', "02:00 ", "03:00", "04:00", "05:00"];
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('حجز موعد'),
          elevation: 5,
          backgroundColor: AppColors.blueColor,
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width(context) * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height(context) * 0.02,
              ),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'اختر اليوم المناسب',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.grayColor),
                      ),
                      Divider(
                        thickness: 1.2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customBlackButtonS(
                            context: context,
                            selectedHeight: 0.07,
                            selectedWidth: 0.35,
                            title: 'اختر يوم الحجز',
                            fontSize: 14,
                            tapped: () => _selectDate(context),
                          ),
                          selectedDate == null
                              ? Text(
                                  "لم يتم تحديد اليوم",
                                  style: TextStyle(
                                      color: AppColors.blueColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              : Row(
                                  children: [
                                    Text(
                                      "${selectedDate.toLocal()}".split(' ')[0],
                                      style: TextStyle(
                                          color: AppColors.blueColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: width(context) * 0.01,
                                    ),
                                    Icon(
                                      CupertinoIcons.check_mark_circled_solid,
                                      color: AppColors.greenColor,
                                    )
                                  ],
                                )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'اختر الوقت المناسب',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.grayColor),
                      ),
                      Divider(
                        thickness: 1.2,
                      ),
                      GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: _data.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1 / 0.75, crossAxisCount: 3),
                        itemBuilder: (BuildContext context, int index) =>
                            Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () => setState(() {
                              selectedIndex = index;
                            }),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: selectedIndex == index
                                      ? AppColors.blueColor
                                      : Colors.white,
                                  border: Border.all(
                                    color: AppColors.blueColor,
                                  ),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Center(
                                child: Text(
                                  _data[index],
                                  style: TextStyle(
                                      color: selectedIndex == index
                                          ? Colors.white
                                          : AppColors.blueColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'تفاصيل الطلب',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.grayColor),
                      ),
                      Divider(
                        thickness: 1.2,
                      ),
                      MyTextFormDetails(
                        hint: 'أكتب وصف مشكلتك هنا',
                        maxLiens: 5,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
