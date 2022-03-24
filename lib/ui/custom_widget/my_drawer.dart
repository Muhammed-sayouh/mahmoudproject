import 'package:flutter/material.dart';
import 'package:mahmoudproject/helpers/constants.dart';
import 'package:mahmoudproject/ui/custom_widget/worker_row_info.dart';
import 'package:mahmoudproject/ui/sizes/sizes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
          child: Container(
        color: Colors.white,
        child: Padding(
          padding: Constants.listPaddingwithvirtical(context),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: width(context) * .4,
                  height: height(context) * 0.2,
                  child: Image.asset(
                    'assets/images/logo.jpg',
                  ),
                ),
                SizedBox(
                  height: height(context) * 0.03,
                ),
                RowWidgetDrawer(
                  title: 'المفضله',
                  icon: Icons.favorite_border,
                ),
                SizedBox(
                  height: height(context) * 0.01,
                ),
                RowWidgetDrawer(
                  title: 'البحث',
                  icon: Icons.search,
                ),
                SizedBox(
                  height: height(context) * 0.01,
                ),
                RowWidgetDrawer(
                  title: 'الوظائف',
                  icon: Icons.wallet_travel_rounded,
                ),
                SizedBox(
                  height: height(context) * 0.01,
                ),
                RowWidgetDrawer(
                  title: 'حول وظيفتي',
                  icon: Icons.info_outline,
                ),
                SizedBox(
                  height: height(context) * 0.01,
                ),
                RowWidgetDrawer(
                  title: 'تواصل معنا',
                  icon: Icons.contact_phone_rounded,
                ),
                SizedBox(
                  height: height(context) * 0.01,
                ),
                RowWidgetDrawer(
                  title: 'محفظتي',
                  icon: Icons.wallet_membership_rounded,
                ),
                SizedBox(
                  height: height(context) * 0.01,
                ),
                RowWidgetDrawer(
                  title: 'محفظتي',
                  icon: Icons.wallet_membership_rounded,
                ),
                SizedBox(
                  height: height(context) * 0.01,
                ),
                RowWidgetDrawer(title: 'مشاركة التطبيق', icon: Icons.share),
                SizedBox(
                  height: height(context) * 0.01,
                ),
                RowWidgetDrawer(
                  title: 'تقييم التطبيق',
                  icon: Icons.rate_review_outlined,
                ),
                SizedBox(
                  height: height(context) * 0.01,
                ),
                  RowWidgetDrawer(
                  title: 'الاعدادات',
                  icon: Icons.app_settings_alt_outlined,
                ),
                SizedBox(
                  height: height(context) * 0.01,
                ),   RowWidgetDrawer(
                  title: 'تسجيل الخروج',
                  icon: Icons.exit_to_app_outlined
                ),
                SizedBox(
                  height: height(context) * 0.01,
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
