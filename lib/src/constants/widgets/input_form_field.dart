import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shreejifoods/src/constants/constants_colours.dart';
import 'package:shreejifoods/src/constants/constants_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      required this.controller,
      required this.text,
      this.suffixicon,
      required this.prefixIcon});
  TextEditingController controller;
  String text;

  IconData? suffixicon;
  String prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 0.75.sw,
        height: 0.05.sh,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
              enabledBorder: const UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromRGBO(233, 230, 232, 1))),
              hintText: text,
              hintStyle: ConstantTextStyle.hintText,
              icon: SvgPicture.asset(prefixIcon),
              suffixIcon: Icon(suffixicon)),
        ),
      ),
    );
  }
}
