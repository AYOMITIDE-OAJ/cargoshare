import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:carbo/utils/custom_color.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/buttons/default_button.dart';
import 'package:carbo/widgets/size.dart';

import '../../utils/dimensions.dart';

class SearchingRideScreen extends StatelessWidget {
  const SearchingRideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          const GoogleMap(
            zoomControlsEnabled: false,
            initialCameraPosition: CameraPosition(
              target: LatLng(
                23.8103,
                90.4125,
              ),
              zoom: 15,
            ),
          ),
          Positioned(
            bottom: 25.h,
            left: 26.w,
            right: 25.w,
            child: Container(
              width: 363.w,
              height: 264.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  Dimensions.radius,
                ),
              ),
              child: Column(
                children: [
                  addVerticalSpace(
                    28.h,
                  ),
                  Text(
                    Strings.searchingRide,
                    style: CustomStyle.dialogueTitleTextStyle,
                  ),
                  addVerticalSpace(
                    12.h,
                  ),
                  Text(
                    Strings.needSomeTime,
                    style: CustomStyle.dialogueSubtitleTextStyle
                        .copyWith(color: Colors.black.withOpacity(0.5)),
                  ),
                  addVerticalSpace(
                    33.6.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 110.w),
                    child: SizedBox(
                      width: 27.w,
                      height: 27.h,
                      child: LottieBuilder.asset(
                        "assets/images/animations/car.json",
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 5.h,
                        color: CustomColor.secondaryColor,
                      ),
                      Container(
                        width: 255.w,
                        height: 5.h,
                        color: CustomColor.primaryColor,
                      ),
                    ],
                  ),
                  addVerticalSpace(
                    33.5.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 19.w,
                      right: 19.9.w,
                    ),
                    child: SizedBox(
                      width: 324.w,
                      height: 55.h,
                      child: DefaultButton(
                          title: Strings.cancelSearching,
                          onPresssed: () {
                            Get.back();
                          }),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
