import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:carbo/routes/routes.dart';
import 'package:carbo/utils/custom_color.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/utils/dimensions.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/buttons/default_button.dart';
import 'package:carbo/widgets/buttons/icon_button.dart';
import 'package:carbo/widgets/input/default_input_text_field.dart';
import 'package:carbo/widgets/size.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget orDivider() {
      return Row(
        mainAxisAlignment: mainStart,
        children: [
          Expanded(
            child: SizedBox(
              width: 147.1.w,
              child: const Divider(
                thickness: 1,
                color: CustomColor.secondaryColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              Strings.or,
              style: CustomStyle.orTextStyle,
            ),
          ),
          Expanded(
            child: SizedBox(
              width: 147.1.w,
              child: const Divider(
                thickness: 1,
                color: CustomColor.secondaryColor,
              ),
            ),
          ),
        ],
      );
    }

    Widget newTocarbo() {
      return RichText(
        text: TextSpan(
          text: Strings.newtocarbo,
          style: TextStyle(
            fontSize: Dimensions.mediumTextSize,
            color: Colors.black.withOpacity(0.5),
          ),
          children: <TextSpan>[
            TextSpan(
              text: Strings.signup,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.toNamed(Routes.signupScreen);
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
            crossAxisAlignment: crossCenter,
            children: [
              Center(
                child: Image.asset("assets/images/splash/splash-logo.png", height: 350.h,),
              ),
              Container(
                width: 363.w,
                height: 465.h,
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
                      addVerticalSpace(32.h),
                      SizedBox(
                        width: 324.w,
                        height: 55.h,
                        child: CustomIconButton(
                          title: Strings.signInWithPhone,
                          onPresssed: () {
                            Get.toNamed(Routes.signInWithPhoneScreen);
                          },
                          iconBg: CustomColor.buttonIconBgColor,
                          buttonBg: CustomColor.primaryColor,
                          icon: const Icon(
                            FontAwesomeIcons.phoneAlt,
                            color: CustomColor.customIconColorOne,
                          ),
                        ),
                      ),
                      addVerticalSpace(28.h),
                      orDivider(),
                      addVerticalSpace(30.h),
                      SizedBox(
                        width: 324.15.w,
                        height: 55.h,
                        child: DefaultTextInputField(
                          controller: emailController,
                          hintText: Strings.emailAddress,
                          keyboardType: TextInputType.emailAddress,
                          icon: const Icon(
                            FontAwesomeIcons.solidEnvelope,
                            color: CustomColor.customIconColorTwo,
                          ),
                        ),
                      ),
                      addVerticalSpace(20.h),
                      SizedBox(
                        width: 324.15.w,
                        height: 55.h,
                        child: DefaultTextInputField(
                          controller: passwordController,
                          hintText: Strings.password,
                          keyboardType: TextInputType.text,
                          icon:
                          const Icon(
                            FontAwesomeIcons.lock,
                            color: CustomColor.customIconColorTwo,
                          ),                      ),
                      ),
                      addVerticalSpace(8.h),
                      Row(
                        mainAxisAlignment: mainEnd,
                        children: [
                          GestureDetector(
                            onTap: () => Get.toNamed(Routes.forgotPasswordScreen),
                            child: Text(
                              Strings.forgotPasswordButtonText,
                              style: CustomStyle.forgotPasswordTextStyle,
                            ),
                          ),
                        ],
                      ),
                      addVerticalSpace(20.h),
                      SizedBox(
                        width: 324.15.w,
                        height: 55.h,
                        child: DefaultButton(
                          title: Strings.signin,
                          onPresssed: () {
                            Get.toNamed(Routes.homeScreen);
                          },
                        ),
                      ),
                      addVerticalSpace(8.h),
                      newTocarbo(),
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
