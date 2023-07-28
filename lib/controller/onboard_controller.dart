import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carbo/data/onboard.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carbo/routes/routes.dart';
import 'package:carbo/utils/custom_color.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/buttons/default_button.dart';

class OnboardController extends GetxController {
  var selectedIndex = 0.obs;
  var pageController = PageController();

  bool get isLastPage => selectedIndex.value == onboardData.length;
  bool get isFirstPage => selectedIndex.value == 0;
  bool get isSecondPage => selectedIndex.value == 1;
  bool get isThirdPage => selectedIndex.value == 2;

  void nextPage() {
    if (isLastPage) {
    } else {
      pageController.nextPage(
        duration: 300.milliseconds,
        curve: Curves.ease,
      );
    }
  }

  void backPage() {
    pageController.previousPage(
      duration: 300.milliseconds,
      curve: Curves.ease,
    );
  }

  pageNavigate() {
    Get.toNamed(Routes.signInScreen);
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5.w),
      height: 19.h,
      width: 19.w,
      decoration: BoxDecoration(
        color: index! <= selectedIndex.value
            ? CustomColor.primaryColor
            : Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: index <= selectedIndex.value
              ? CustomColor.primaryColor
              : CustomColor.secondaryColor,
          width: 1.w,
        ),
      ),
    );
  }

  dotWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        onboardData.length,
        (index) => buildDot(index: index),
      ),
    );
  }

  buttonWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 36.w,
      ),
      child: SizedBox(
        width: 342.76.w,
        height: 55.h,
        child: DefaultButton(
          title: isFirstPage || isSecondPage || isThirdPage
              ? Strings.next
              : Strings.getStarted,
          onPresssed: () {
            isFirstPage || isSecondPage || isThirdPage
                ? nextPage()
                : pageNavigate();
          },
        ),
      ),
    );
  }
}
