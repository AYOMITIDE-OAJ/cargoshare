import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:carbo/utils/custom_color.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/buttons/default_button.dart';
import 'package:carbo/widgets/custom_appbar.dart';
import 'package:carbo/widgets/size.dart';

class CancelTripScreen extends StatelessWidget {
  CancelTripScreen({Key? key}) : super(key: key);
  final waitingCheckValue = false.obs;
  final noRideCheckValue = false.obs;
  final wrongAdressCheckValue = false.obs;
  final dontChargeCheckValue = false.obs;
  final othersCheckValue = false.obs;

  @override
  Widget build(BuildContext context) {
    Widget cancelOptions() {
      return Padding(
        padding: EdgeInsets.only(left: 30.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: mainStart,
              children: [
                Obx(
                  () => Checkbox(
                    checkColor: Colors.white,
                    activeColor: CustomColor.primaryColor,
                    value: waitingCheckValue.value,
                    onChanged: waitingCheckValue,
                  ),
                ),
                Text(
                  Strings.acceptTerms,
                  style: CustomStyle.forgotPasswordTextStyle.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: const Divider(
                color: CustomColor.secondaryColor,
              ),
            ),
            Row(
              mainAxisAlignment: mainStart,
              children: [
                Obx(
                  () => Checkbox(
                    checkColor: Colors.white,
                    activeColor: CustomColor.primaryColor,
                    value: noRideCheckValue.value,
                    onChanged: noRideCheckValue,
                  ),
                ),
                Text(
                  Strings.noRide,
                  style: CustomStyle.forgotPasswordTextStyle.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: const Divider(
                color: CustomColor.secondaryColor,
              ),
            ),
            Row(
              mainAxisAlignment: mainStart,
              children: [
                Obx(
                  () => Checkbox(
                    checkColor: Colors.white,
                    activeColor: CustomColor.primaryColor,
                    value: wrongAdressCheckValue.value,
                    onChanged: wrongAdressCheckValue,
                  ),
                ),
                Text(
                  Strings.wrongAddress,
                  style: CustomStyle.forgotPasswordTextStyle.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: const Divider(
                color: CustomColor.secondaryColor,
              ),
            ),
            Row(
              mainAxisAlignment: mainStart,
              children: [
                Obx(
                  () => Checkbox(
                    checkColor: Colors.white,
                    activeColor: CustomColor.primaryColor,
                    value: dontChargeCheckValue.value,
                    onChanged: dontChargeCheckValue,
                  ),
                ),
                Text(
                  Strings.noChargeRider,
                  style: CustomStyle.forgotPasswordTextStyle.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: const Divider(
                color: CustomColor.secondaryColor,
              ),
            ),
            Row(
              mainAxisAlignment: mainStart,
              children: [
                Obx(
                  () => Checkbox(
                    checkColor: Colors.white,
                    activeColor: CustomColor.primaryColor,
                    value: othersCheckValue.value,
                    onChanged: othersCheckValue,
                  ),
                ),
                Text(
                  Strings.others,
                  style: CustomStyle.forgotPasswordTextStyle.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
          backgroundColor: CustomColor.screenBGColor,
          body: Column(
            children: [
              CustomAppbar(
                gapBetweenBackButtonAndTitle: 95.w,
                gapBetweenTitlAndAppbar: 36.h,
                title: Strings.cancelTripTitle,
              ),
              addVerticalSpace(34.5.h),
              cancelOptions(),
              addVerticalSpace(160.h),
              SizedBox(
                width: 342.76.w,
                height: 55.h,
                child: DefaultButton(title: Strings.done, onPresssed: () {}),
              ),
            ],
          )),
    );
  }
}
