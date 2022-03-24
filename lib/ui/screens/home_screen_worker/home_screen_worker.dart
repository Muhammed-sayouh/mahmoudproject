import 'package:flutter/material.dart';
import 'package:mahmoudproject/helpers/constants.dart';
import 'package:mahmoudproject/model/days.dart';
import 'package:mahmoudproject/model/worker_taps.dart';
import 'package:mahmoudproject/ui/custom_widget/my_drawer.dart';
import 'package:mahmoudproject/ui/custom_widget/worker_row_info.dart';
import 'package:mahmoudproject/ui/sizes/sizes.dart';
import 'package:mahmoudproject/ui/style/colors.dart';

class WorkerHomeScreen extends StatefulWidget {
  const WorkerHomeScreen({Key key}) : super(key: key);

  @override
  State<WorkerHomeScreen> createState() => _WorkerHomeScreenState();
}

class _WorkerHomeScreenState extends State<WorkerHomeScreen> {
  int selectedTap = 0;
  List<int> selectedDays = [];
  List<WorkerTaps> workerTaps = [
  WorkerTaps(id: 0, selected: true, title: 'معلومات شخصيه'),
  WorkerTaps(id: 1, selected: false, title: 'من اعمالي'),
  WorkerTaps(id: 2, selected: false, title: 'مواعيد العمل'),
];


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppColors.blueColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.blueColor,
          title: Text(
            'مرحبا بك',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        drawer: MyDrawer(),
        body: Padding(
          padding: Constants.listPaddingwithvirtical(context),
          child: Column(
            children: [
              SizedBox(
                height: height(context) * 0.03,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      width: width(context) * 0.19,
                      height: width(context) * 0.19,
                      child: FadeInImage.assetNetwork(
                        placeholder: 'assets/images/preloader.gif',
                        image:
                            "https://www.masa-petroleum.com/wp-content/uploads/2019/02/Woman-Factory-Worker-with-iPad-e1550651029140.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'عبدالله احمد',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: height(context) * 0.02,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 5,
                child: SizedBox(
                  width: width(context),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: height(context) * 0.05,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: workerTaps.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: width(context) * 0.02),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedTap = workerTaps[index].id;
                                    workerTaps.forEach((element) {
                                      element.selected = false;
                                    });
                                    workerTaps[index].selected = true;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: workerTaps[index].selected
                                        ? AppColors.blueColor
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: Text(
                                        workerTaps[index].title,
                                        style: TextStyle(
                                            color: workerTaps[index].selected
                                                ? Colors.white
                                                : AppColors.blueColor,
                                            fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      selectedTap == 0
                          ? SizedBox(
                              height: height(context) * 0.6,
                              child: Padding(
                                padding:
                                    Constants.listPaddingwithvirtical(context),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: height(context) * 0.08,
                                    ),
                                    RowWidgetWorkerHomeInfo(
                                      title: 'دهان / نقاشه',
                                      icon: Icons.work_outline_outlined,
                                    ),
                                    Divider(),
                                    RowWidgetWorkerHomeInfo(
                                      title: 'احمد ماهر المنصوره',
                                      icon: Icons.fmd_good_outlined,
                                    ),
                                    Divider(),
                                    RowWidgetWorkerHomeInfo(
                                      title: '01021477041',
                                      icon: Icons.phone_android,
                                    ),
                                    Divider(),
                                    RowWidgetWorkerHomeInfo(
                                        title: 'ثلات سنوات',
                                        icon: Icons.date_range),
                                  ],
                                ),
                              ),
                            )
                          : selectedTap == 1
                              ? SizedBox(
                                  height: height(context) * 0.6,
                                  child: Padding(
                                    padding: Constants.listPaddingwithvirtical(
                                        context),
                                    child: GridView.builder(
                                      itemCount: 2,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              mainAxisSpacing: 10,
                                              crossAxisSpacing: 10),
                                      itemBuilder: (context, index) {
                                        return ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: FadeInImage.assetNetwork(
                                            placeholder:
                                                'assets/images/preloader.gif',
                                            image:
                                                'https://socialbuildingz.com/sites/default/files/projects/2_Page_10.jpg',
                                            fit: BoxFit.fill,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                )
                              : SizedBox(
                                  height: height(context) * 0.6,
                                  child: Padding(
                                    padding: Constants.listPaddingwithvirtical(
                                        context),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: height(context) * 0.05,
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            'حدد ايام عملك ',
                                            style: TextStyle(
                                                color: AppColors.blueColor,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(
                                          height: height(context) * 0.02,
                                        ),
                                        SizedBox(
                                          height: height(context) * 0.25,
                                          child: GridView.builder(
                                            itemCount: workersDays.length,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        width(context) * 0.02),
                                                child: InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      if (selectedDays.contains(
                                                          workersDays[index]
                                                              .id)) {
                                                        selectedDays.remove(
                                                            workersDays[index]
                                                                .id);
                                                        workersDays[index]
                                                            .selected = false;
                                                      } else {
                                                        selectedDays.add(
                                                            workersDays[index]
                                                                .id);
                                                        workersDays[index]
                                                            .selected = true;
                                                      }
                                                      ;
                                                    });
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: workersDays[
                                                                        index]
                                                                    .selected
                                                                ? Colors
                                                                    .transparent
                                                                : Colors.grey),
                                                        color:
                                                            workersDays[index]
                                                                    .selected
                                                                ? AppColors
                                                                    .blueColor
                                                                : Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      5),
                                                          child: Text(
                                                            workersDays[index]
                                                                .title,
                                                            style: TextStyle(
                                                                color: workersDays[
                                                                            index]
                                                                        .selected
                                                                    ? Colors
                                                                        .white
                                                                    : AppColors
                                                                        .blueColor,
                                                                fontSize: 12),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 3,
                                                    childAspectRatio: 1 / 0.5),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
