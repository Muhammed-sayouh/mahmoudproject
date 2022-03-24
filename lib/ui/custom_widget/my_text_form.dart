import 'package:flutter/material.dart';

class MyTextForm extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  const MyTextForm({
    Key key,
    this.hint,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.blue[900],
        ),
      ),
    );
  }
}
