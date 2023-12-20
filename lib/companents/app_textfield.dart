import 'package:flutter/material.dart';
import 'package:legba/styles/app_color.dart';

class AppTextField extends StatelessWidget {
  AppTextField({super.key, required this.hintText});

  String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          labelText: hintText,
          labelStyle: TextStyle(color: AppColors.white),
          filled: true,
          fillColor: AppColors.fieldColor,
          focusedBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(color: Colors.transparent)),
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)))),
    );
  }
}
