import 'package:flutter/material.dart';
import 'package:mahmoudproject/ui/style/colors.dart';

class RowWidgetWorkerHomeInfo extends StatelessWidget {
  final String title;
  final IconData icon;

  const RowWidgetWorkerHomeInfo({Key key, this.title, this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 30,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        )
      ],
    );
  }
}

class RowWidgetDrawer extends StatelessWidget {
  final String title;
  final IconData icon;

  const RowWidgetDrawer({Key key, this.title, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 35,
          color: Colors.grey,
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: AppColors.blueColor),
        )
      ],
    );
  }
}
