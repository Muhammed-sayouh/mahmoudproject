import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahmoudproject/ui/screens/booking/booking_screen.dart';
import 'package:mahmoudproject/ui/sizes/sizes.dart';
import 'package:mahmoudproject/ui/style/colors.dart';

class CategoryDetailsScreen extends StatefulWidget {
  const CategoryDetailsScreen({Key key}) : super(key: key);

  @override
  State<CategoryDetailsScreen> createState() => _CategoryDetailsScreenState();
}

class _CategoryDetailsScreenState extends State<CategoryDetailsScreen> {
  List<String> _data = ['تركيب', 'تصليح', "مفاتيح ", "مراوح", "اناره"];
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('كهرباء'),
          centerTitle: true,
          elevation: 5,
          backgroundColor: AppColors.blueColor,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: width(context),
              height: height(context) * 0.08,
              child: ListView.builder(
                itemCount: _data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => setState(() {
                        selectedIndex = index;
                      }),
                      child: Container(
                        width: width(context) * 0.18,
                        height: height(context) * 0.08,
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
              ),
            ),
            SizedBox(
              height: height(context) * 0.02,
            ),
            selectedIndex != 0
                ? Padding(
                  padding:  EdgeInsets.only(top: height(context)*0.3),
                  child: Text(
                      'لا يوجد خدمات بهذا القسم حاليا',
                      style: TextStyle(
                          color: AppColors.blueColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                )
                : Expanded(
                    child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) => InkWell(
                                                onTap: () =>Get.to(()=>BookingScreen(),transition: Transition.zoom),

                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width(context) * 0.04),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'تركيب كشاف او لمبه نيون',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.blueColor),
                                ),
                                Text(
                                  '25-50 ج.م',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.blueColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ))
          ],
        ),
      ),
    );
  }
}
