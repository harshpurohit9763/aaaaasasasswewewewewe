import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonReuseable extends StatelessWidget {
  CustomButtonReuseable(
      {super.key,
      required this.height,
      required this.width,
      required this.color,
      required this.widget,
      required this.radius});
  double height, width, radius;
  Color color;
  Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.sh,
      width: width.sw,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius.r),
      ),
      child: widget,
    );
  }
}
