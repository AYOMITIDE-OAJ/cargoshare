import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:carbo/routes/routes.dart';
import 'package:carbo/utils/custom_color.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/utils/dimensions.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/buttons/default_button.dart';
import 'package:carbo/widgets/size.dart';

class AvailableDrivercreen extends StatelessWidget {
  const AvailableDrivercreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget driverLocation() {
      return Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Stack(
            children: [
              Container(
                width: 97.w,
                height: 21.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: CustomColor.secondaryColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(Dimensions.radius * .5),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 6.w),
                  child: Text(
                    Strings.driverLocation,
                    textAlign: TextAlign.end,
                    style: CustomStyle.defaultFontMediumBlackStyle.copyWith(
                      fontSize: 9.sp,
                    ),
                  ),
                ),
              ),
              Container(
                width: 24.w,
                height: 21.h,
                decoration: BoxDecoration(
                  color: CustomColor.secondaryColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius * .5),
                ),
                child: const Icon(Icons.two_wheeler, size: 13, color: CustomColor.whiteColor,)
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                width: 97.w,
                height: 21.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: CustomColor.locationBorderColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(Dimensions.radius * .5),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 6.w),
                  child: Text(
                    Strings.setLocationHint,
                    textAlign: TextAlign.end,
                    style: CustomStyle.defaultFontMediumBlackStyle.copyWith(
                      fontSize: 9.sp,
                    ),
                  ),
                ),
              ),
              Container(
                width: 24.w,
                height: 21.h,
                decoration: BoxDecoration(
                  color: CustomColor.locationContainerColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius * .5),
                ),
                child: const Icon(Icons.emoji_people, size: 13, color: CustomColor.whiteColor,)
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                width: 97.w,
                height: 21.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: CustomColor.primaryColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(Dimensions.radius * .5),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 6.w),
                  child: Text(
                    Strings.destinationHint1,
                    textAlign: TextAlign.end,
                    style: CustomStyle.defaultFontMediumBlackStyle.copyWith(
                      fontSize: 9.sp,
                    ),
                  ),
                ),
              ),
              Container(
                width: 24.w,
                height: 21.h,
                decoration: BoxDecoration(
                  color: CustomColor.primaryColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius * .5),
                ),
                child: const Icon(Icons.location_on, size: 13, color: CustomColor.whiteColor,)
              ),
            ],
          ),
        ],
      );
    }

    Widget driverInfo() {
      return ListTile(
        leading: SizedBox(
          width: 51.w,
          height: 51.h,
          child: CircleAvatar(
            child: Image.asset("assets/images/home/11.png"),
          ),
        ),
        title: Text(
          Strings.driverName,
          style: CustomStyle.sendRequestBottomSubtitleTextStyle,
        ),
        subtitle: Row(
          children: [
            const Icon(
              Icons.verified_user,
              color: CustomColor.primaryColor,
            ),
            addHorizontalSpace(3.9.w),
            Text(
              Strings.completedRide,
              style: CustomStyle.driverTotalRideTextStyle,
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
              size: 10,
            ),
            const Icon(
              Icons.star,
              color: Colors.amber,
              size: 10,
            ),
            Text(
              Strings.rating,
              style: CustomStyle.driverTotalRideTextStyle,
            ),
          ],
        ),
      );
    }

    Widget driverOtherInfo() {
      return Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Column(
            crossAxisAlignment: crossStart,
            children: [
              Text(
                Strings.bikeName,
                style: CustomStyle.sendRequestBottomTitleTextStyle,
              ),
              Text(
                Strings.bikeNumber,
                style: CustomStyle.sendRequestBottomSubtitleTextStyle,
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: (() {
                  Get.toNamed(Routes.chattingScreen);
                }),
                child: SizedBox(
                  width: 25.w,
                  height: 25.h,
                  child: const CircleAvatar(
                    backgroundColor: CustomColor.primaryColor,
                    child: Icon(
                      FontAwesomeIcons.solidEnvelope,
                      size: 12,
                      color: CustomColor.customIconColorOne,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 25.w,
                height: 25.h,
                child: const CircleAvatar(
                  backgroundColor: CustomColor.primaryColor,
                  child: Icon(
                    FontAwesomeIcons.phoneAlt,
                    size: 12,
                    color: CustomColor.customIconColorOne,
                  ),
                ),
              ),
            ],
          )
        ],
      );
    }

    return SafeArea(
        child: Scaffold(
      body: Stack(children: [
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
            height: 298.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                Dimensions.radius,
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  width: 363.w,
                  height: 41.h,
                  decoration: BoxDecoration(
                    color: CustomColor.primaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius),
                      topRight: Radius.circular(Dimensions.radius),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      Strings.nearestDriver,
                      style: CustomStyle.availableDriverTitleTextStyle,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 19.w),
                  child: Column(
                    children: [
                      driverInfo(),
                      addVerticalSpace(16.h),
                      driverLocation(),
                      addVerticalSpace(18.h),
                      driverOtherInfo(),
                      addVerticalSpace(10.h),
                      SizedBox(
                        width: 324.15.w,
                        height: 55.h,
                        child: DefaultButton(
                          title: Strings.cancelRide,
                          onPresssed: () {
                            Get.toNamed(Routes.cancelTripScreen);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
