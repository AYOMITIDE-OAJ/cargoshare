import 'package:carbo/utils/custom_color.dart';
import 'package:carbo/widgets/buttons/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/custom_appbar.dart';
import 'package:carbo/widgets/input/default_input_text_field.dart';
import 'package:carbo/widgets/size.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController retypePasswordController =
      TextEditingController();
  final TextEditingController confirmNewPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: crossStart,
          children: [
            CustomAppbar(
              gapBetweenBackButtonAndTitle: 76.0.w,
              gapBetweenTitlAndAppbar: 36.0.w,
              title: Strings.resetPasswordTitle,
            ),
            addVerticalSpace(56.h),
            Padding(
              padding: EdgeInsets.only(
                left: 36.w,
                right: 35.2.w,
              ),
              child: Column(
                mainAxisAlignment: mainStart,
                crossAxisAlignment: crossStart,
                children: [
                  Text(
                    Strings.newPassword,
                    style: CustomStyle.defaultFontMediumBlackStyle,
                  ),
                  addVerticalSpace(20.h),
                  SizedBox(
                    height: 55.h,
                    child: DefaultTextInputField(
                      controller: newPasswordController,
                      hintText: Strings.newPassword,
                      keyboardType: TextInputType.text,
                      icon: const Icon(
                        FontAwesomeIcons.lock,
                        color: CustomColor.customIconColorTwo,
                      ),
                    ),
                  ),
                  addVerticalSpace(18.h),
                  Text(
                    Strings.retypePassword,
                    style: CustomStyle.defaultFontMediumBlackStyle,
                  ),
                  addVerticalSpace(20.h),
                  SizedBox(
                    height: 55.h,
                    child: DefaultTextInputField(
                      controller: retypePasswordController,
                      hintText: Strings.retypePassword,
                      keyboardType: TextInputType.text,
                      icon: const Icon(
                        FontAwesomeIcons.lock,
                        color: CustomColor.customIconColorTwo,
                      ),
                    ),
                  ),
                  addVerticalSpace(18.h),
                  Text(
                    Strings.confirmNewPassword,
                    style: CustomStyle.defaultFontMediumBlackStyle,
                  ),
                  addVerticalSpace(20.h),
                  SizedBox(
                    height: 55.h,
                    child: DefaultTextInputField(
                      controller: confirmNewPasswordController,
                      hintText: Strings.confirmNewPassword,
                      keyboardType: TextInputType.text,
                      icon: const Icon(
                        FontAwesomeIcons.lock,
                        color: CustomColor.customIconColorTwo,
                      ),
                    ),
                  ),
                  addVerticalSpace(50.h),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.w,
                      right: 10.w,
                    ),
                    child: SizedBox(
                      width: 324.15.w,
                      height: 55.h,
                      child: DefaultButton(
                        title: Strings.submit,
                        onPresssed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
