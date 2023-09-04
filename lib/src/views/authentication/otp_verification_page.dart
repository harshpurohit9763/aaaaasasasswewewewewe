import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:shreejifoods/src/constants/constants_colours.dart';
import 'package:shreejifoods/src/constants/constants_text_style.dart';
import 'package:shreejifoods/src/constants/custom_text_field.dart';
import 'package:shreejifoods/src/constants/widgets/constants_button.dart';
import 'package:shreejifoods/src/constants/widgets/input_form_field.dart';
import 'package:shreejifoods/src/controllers/authentication_controller.dart';
import 'package:shreejifoods/src/views/authentication/loginpage_view.dart';

class OtpVerifyPage extends StatelessWidget {
  const OtpVerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GetBuilder<AuthenticationController>(
        init: AuthenticationController(),
        builder: (controller) {
          return Container(
            height: Get.height,
            width: Get.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(38, 13, 70, 1),
                  Color.fromRGBO(62, 6, 113, 1)
                ],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    'assets/backgrounds/login_background.svg',
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 0.04.sh),
                    child: Image.asset(
                      'assets/logo/shreeji_logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 0.75.sh,
                    width: 0.9.sw,
                    decoration: BoxDecoration(
                        color: ConstantColours.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(48.r),
                            topRight: Radius.circular(8.r))),
                    child: Padding(
                      padding: EdgeInsets.all(11.h),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 25.0.h),
                            child: const Text(
                              "OTP Verification",
                              style: ConstantTextStyle.heading2,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25.h),
                            child: Pinput(
                              focusedPinTheme: PinTheme(
                                width: 56.w,
                                height: 56.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(4.r),
                                      topLeft: Radius.circular(4.r)),
                                  border: Border(
                                    top: const BorderSide(
                                      color: ConstantColours.primaryNew,
                                    ),
                                    left: const BorderSide(
                                      color: ConstantColours.primaryNew,
                                    ),
                                    right: const BorderSide(
                                      color: ConstantColours.primaryNew,
                                    ),
                                    bottom: BorderSide(
                                      color: ConstantColours.primaryNew,
                                      width: 4.h,
                                    ),
                                  ),
                                ),
                              ),
                              defaultPinTheme: PinTheme(
                                width: 56.w,
                                height: 56.h,
                                decoration: BoxDecoration(
                                  color: ConstantColours.grey,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(4.r),
                                      topLeft: Radius.circular(4.r)),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 35.h),
                            child: CustomButtonReuseable(
                              height: 0.06,
                              width: 50,
                              radius: 8,
                              color: ConstantColours.primaryNew,
                              widget: Center(
                                child: CustomTextField(
                                  text: "Verify",
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25.0.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Didn't recieve the code?  ",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: ConstantColours.black),
                                  ),
                                  TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        //TODO Implement resend
                                      },
                                    text: "Resend",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                      color: ConstantColours.secondaryNewGrad,
                                      decoration: TextDecoration.underline,
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
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 25.0.h, left: 10.0.w),
                      child: CircleAvatar(
                        radius: 15.r,
                        backgroundColor: ConstantColours.white,
                        child: Center(child: Icon(Icons.arrow_back_ios_new)),
                      ),
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
