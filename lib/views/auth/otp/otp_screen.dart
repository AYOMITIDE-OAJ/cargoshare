import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:carbo/utils/custom_color.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/utils/dimensions.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/buttons/default_button.dart';
import 'package:carbo/widgets/custom_appbar.dart';
import 'package:carbo/widgets/size.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget resendCode() {
      return RichText(
        text: TextSpan(
          text: Strings.noCode,
          style: TextStyle(
            fontSize: Dimensions.mediumTextSize,
            color: Colors.black.withOpacity(0.5),
          ),
          children: <TextSpan>[
            TextSpan(
              text: Strings.resendCode,
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

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: crossStart,
          children: [
            const CustomAppbar(
              gapBetweenBackButtonAndTitle: 0.0,
              gapBetweenTitlAndAppbar: 0.0,
              title: "",
            ),
            addVerticalSpace(99.h),
            Padding(
              padding: EdgeInsets.only(left: 36.w),
              child: Text(
                Strings.codeSent,
                style: CustomStyle.defaultFontMediumBlackStyle,
              ),
            ),
            addVerticalSpace(20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              child: PinCodeTextField(
                appContext: context,
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                cursorColor: CustomColor.secondaryColor,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(Dimensions.radius * .5),
                  selectedColor: CustomColor.secondaryColor,
                  activeColor: CustomColor.secondaryColor,
                  inactiveColor: CustomColor.secondaryColor,
                  fieldHeight: 55.h,
                  fieldWidth: 49.w,
                  activeFillColor: Colors.white,
                ),
                onChanged: (String value) {},
              ),
            ),
            addVerticalSpace(33.h),
            Padding(
              padding: EdgeInsets.only(left: 36.w, right: 35.2.w),
              child: SizedBox(
                width: 342.76.w,
                height: 55.h,
                child: DefaultButton(
                    title: Strings.submit,
                    onPresssed: () {
                      // Get.toNamed(Routes.otpScreen);
                    }),
              ),
            ),
            addVerticalSpace(64.h),
            Center(child: resendCode()),
          ],
        ),
      ),
    );
  }
}
