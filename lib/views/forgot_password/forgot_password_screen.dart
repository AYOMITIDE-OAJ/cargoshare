import 'package:carbo/utils/custom_color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:carbo/routes/routes.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/utils/dimensions.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/buttons/default_button.dart';
import 'package:carbo/widgets/input/default_input_text_field.dart';
import 'package:carbo/widgets/size.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget backToSignin() {
      return RichText(
        text: TextSpan(
          text: Strings.backTo,
          style: TextStyle(
            fontSize: Dimensions.mediumTextSize,
            color: Colors.black.withOpacity(0.5),
          ),
          children: <TextSpan>[
            TextSpan(
              text: Strings.signin,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // Get.toNamed();
                },
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      decoration: CustomStyle.gradientBg,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.asset("assets/images/splash/splash-logo.png", height: 350.h,),
              ),
              Container(
                width: 363.w,
                height: 480.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.radius),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 18.9.w,
                    right: 19.9.w,
                  ),
                  child: Column(
                    children: [
                      addVerticalSpace(26.h),
                      Center(
                        child: Image.asset("assets/images/welcome/otp-icon.png"),
                      ),
                      addVerticalSpace(19.1.h),
                      Text(
                        Strings.forgotPassword,
                        style: CustomStyle.forgotPasswordTitleStyle,
                      ),
                      addVerticalSpace(13.h),
                      Text(
                        Strings.enterYourNumber,
                        textAlign: TextAlign.center,
                        style: CustomStyle.forgotPasswordSubtitleStyle,
                      ),
                      addVerticalSpace(19.1.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: SizedBox(
                          width: 323.w,
                          height: 55.h,
                          child: DefaultTextInputField(
                            controller: phoneNumberController,
                            hintText: Strings.phoneHint,
                            keyboardType: TextInputType.number,
                            icon:
                            const Icon(
                              FontAwesomeIcons.phoneAlt,
                              color: CustomColor.customIconColorTwo,
                            ),
                          ),
                        ),
                      ),
                      addVerticalSpace(30.h),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20.w,
                          right: 18.9.w,
                        ),
                        child: SizedBox(
                          width: 324.15.w,
                          height: 55.h,
                          child: DefaultButton(
                            title: Strings.submit,
                            onPresssed: () {
                              Get.toNamed(
                                Routes.resetPasswordScreen,
                              );
                            },
                          ),
                        ),
                      ),
                      addVerticalSpace(19.h),
                      Center(
                        child: backToSignin(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
