import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shreejifoods/src/constants/constants_colours.dart';
import 'package:shreejifoods/src/constants/constants_text_style.dart';
import 'package:shreejifoods/src/constants/custom_text_field.dart';
import 'package:shreejifoods/src/constants/widgets/constants_button.dart';
import 'package:shreejifoods/src/constants/widgets/input_form_field.dart';
import 'package:shreejifoods/src/controllers/authentication_controller.dart';
import 'package:shreejifoods/src/views/authentication/register_view.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({super.key});

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
                              "Login",
                              style: ConstantTextStyle.heading2,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 25.h, bottom: 5.h),
                            child: CustomTextFormField(
                              prefixIcon: "assets/icons/phone.svg",
                              controller: controller.phoneNumber,
                              text: "+91 | Enter your Mobile number",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 12.h),
                            child: CustomTextFormField(
                              suffixicon: Icons.remove_red_eye_outlined,
                              prefixIcon: "assets/icons/lock.svg",
                              controller: controller.password,
                              text: "Enter Password",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 8.0.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomTextField(
                                  text: "Forgot Password?",
                                  color: ConstantColours.secondaryNewGrad,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 48.h),
                            child: CustomButtonReuseable(
                              height: 0.06,
                              width: 50,
                              radius: 8,
                              color: ConstantColours.primaryNew,
                              widget: Center(
                                child: CustomTextField(
                                  text: "Login",
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
                                    text: "Do not have an account? ",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: ConstantColours.black),
                                  ),
                                  TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Get.to(() => const RegisterPageView());
                                      },
                                    text: "Register",
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
                          Expanded(child: Container()),
                          Padding(
                            padding: EdgeInsets.only(right: 8.0.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomTextField(
                                  text: "Skip",
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                  color: ConstantColours.black,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
