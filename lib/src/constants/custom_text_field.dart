import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.text,
      this.fontSize,
      this.fontWeight,
      this.color,
      this.decoration,
      this.textStyle});
  String text;

  FontWeight? fontWeight;
  double? fontSize;
  Color? color;
  TextStyle? textStyle;
  TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: textStyle?.color ?? color,
          fontFamily: 'Montserrat',
          fontWeight: fontWeight,
          fontSize: textStyle?.fontSize ?? fontSize,
          decoration: decoration),
    );
  }
}
