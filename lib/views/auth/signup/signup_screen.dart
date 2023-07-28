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
import 'package:carbo/widgets/input/default_input_text_field.dart';
import 'package:carbo/widgets/size.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController retypePasswordController =
      TextEditingController();

  final checkValue = false.obs;

  @override
  Widget build(BuildContext context) {
    Widget alreadyAccount() {
      return RichText(
        text: TextSpan(
          text: Strings.alreadyAccount,
          style: TextStyle(
            fontSize: Dimensions.mediumTextSize,
            color: Colors.black.withOpacity(0.5),
          ),
          children: <TextSpan>[
            TextSpan(
              text: Strings.signin,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.toNamed(Routes.signInScreen);
                },
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }

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

    Widget socialIcons() {
      return Row(
        mainAxisAlignment: mainCenter,
        children: [
          SizedBox(
            height: 50.h,
            width: 50.w,
            child: const CircleAvatar(
              backgroundColor: CustomColor.secondaryColor,
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.google,
                  color: CustomColor.whiteColor,
                  size: 25,
                ),
              ),
            ),
          ),
          addHorizontalSpace(6.w),
          SizedBox(
            height: 50.h,
            width: 50.w,
            child: const CircleAvatar(
              backgroundColor: CustomColor.secondaryColor,
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.facebookF,
                  color: CustomColor.whiteColor,
                  size: 25,
                ),
              ),
            ),
          ),
          addHorizontalSpace(6.w),
          SizedBox(
            height: 50.h,
            width: 50.w,
            child: const CircleAvatar(
              backgroundColor: CustomColor.secondaryColor,
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.apple,
                  color: CustomColor.whiteColor,
                ),
              ),
            ),
          ),
        ],
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
                child: Image.asset("assets/images/splash/splash-logo.png", height: 250.h,),
              ),
              Container(
                width: 363.w,
                height: 637.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.radius),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 26.w,
                    right: 25.w,
                  ),
                  child: Column(
                    children: [
                      addVerticalSpace(32.h),
                      SizedBox(
                        height: 55.h,
                        child: DefaultTextInputField(
                          controller: nameController,
                          hintText: Strings.name,
                          keyboardType: TextInputType.text,
                          icon:
                          const Icon(
                            FontAwesomeIcons.idCardAlt,
                            color: CustomColor.customIconColorTwo,
                          ),                      ),
                      ),
                      addVerticalSpace(20.h),
                      SizedBox(
                        height: 55.h,
                        child: DefaultTextInputField(
                          controller: emailController,
                          hintText: Strings.emailAddress,
                          keyboardType: TextInputType.emailAddress,
                          icon:
                          const Icon(
                            FontAwesomeIcons.solidEnvelope,
                            color: CustomColor.customIconColorTwo,
                          ),                      ),
                      ),
                      addVerticalSpace(20.h),
                      SizedBox(
                        height: 55.h,
                        child: DefaultTextInputField(
                          controller: phoneController,
                          hintText: Strings.phoneHint,
                          keyboardType: TextInputType.number,
                          icon:
                          const Icon(
                            FontAwesomeIcons.phoneAlt,
                            color: CustomColor.customIconColorTwo,
                          ),                      ),
                      ),
                      addVerticalSpace(20.h),
                      SizedBox(
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
                      addVerticalSpace(20.h),
                      SizedBox(
                        height: 55.h,
                        child: DefaultTextInputField(
                          controller: retypePasswordController,
                          hintText: Strings.retypePassword,
                          keyboardType: TextInputType.text,
                          icon:
                          const Icon(
                            FontAwesomeIcons.lock,
                            color: CustomColor.customIconColorTwo,
                          ),                      ),
                      ),
                      addVerticalSpace(9.h),
                      Row(
                        mainAxisAlignment: mainStart,
                        children: [
                          Obx(
                                () => SizedBox(
                              width: 14.5.w,
                              height: 14.5.h,
                              child: Checkbox(
                                checkColor: CustomColor.secondaryColor,
                                activeColor: Colors.grey,
                                value: checkValue.value,
                                onChanged: checkValue,
                              ),
                            ),
                          ),
                          addHorizontalSpace(12.5.w),
                          Text(
                            Strings.acceptTerms,
                            style: CustomStyle.checkBoxTextStyle,
                          )
                        ],
                      ),
                      addVerticalSpace(10.h),
                      SizedBox(
                        width: 324.15.w,
                        height: 55.h,
                        child: DefaultButton(
                          title: Strings.signup,
                          onPresssed: () {},
                        ),
                      ),
                      addVerticalSpace(8.h),
                      alreadyAccount(),
                      addVerticalSpace(18.h),
                      orDivider(),
                      addVerticalSpace(20.h),
                      socialIcons(),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
