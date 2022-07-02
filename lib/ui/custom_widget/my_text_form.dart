import 'package:flutter/material.dart';
import 'package:mahmoudproject/ui/style/colors.dart';

class MyTextForm extends StatelessWidget {
  final String hint;
  final int maxLiens;
  final TextEditingController controller;
  const MyTextForm({
    Key key,
    this.hint,
    this.controller, this.maxLiens,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines:maxLiens ??1,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.blue[900],
        ),
      ),
    );
  }
}class MyTextFormDetails extends StatelessWidget {
  final String hint;
  final int maxLiens;
  final TextEditingController controller;
  const MyTextFormDetails({
    Key key,
    this.hint,
    this.controller, this.maxLiens,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines:maxLiens ??1,
      
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        isDense: true,
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey[400]),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: AppColors.grayColor
          )
        ),
   
      ),
    );
  }
}
