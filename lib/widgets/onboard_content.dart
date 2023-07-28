import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:carbo/controller/onboard_controller.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/widgets/size.dart';

class OnboardContent extends StatelessWidget {
  OnboardContent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image, title, description;
  final _controller = Get.find<OnboardController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 700.h,
          height: 250.h,
        ),
        _controller.isFirstPage
            ? addVerticalSpace(52.h)
            : _controller.isSecondPage
                ? addVerticalSpace(41.h)
                : addVerticalSpace(53.h),
        Text(
          title,
          style: CustomStyle.onboardTitleStyle,
        ),
        addVerticalSpace(8.h),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 28.w),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: CustomStyle.onboardSubtitleStyle,
          ),
        ),
      ],
    );
  }
}
