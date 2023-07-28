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
import 'package:carbo/widgets/custom_appbar.dart';
import 'package:carbo/widgets/size.dart';

class SendRequestScreen extends StatelessWidget {
  SendRequestScreen({Key? key}) : super(key: key);
  final TextEditingController setDestinationController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget sendReqTop() {
      return Column(
        mainAxisAlignment: mainStart,
        crossAxisAlignment: crossStart,
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    SizedBox(
                      width: 15.59.w,
                      height: 18.12.h,
                      child: const Icon(Icons.emoji_people, size: 20,)
                    ),
                    addVerticalSpace(10.h),
                    SizedBox(
                      height: 36.h,
                      child: VerticalDivider(
                        color: Colors.white.withOpacity(0.5),
                        thickness: 2,
                      ),
                    ),
                    addVerticalSpace(5.h),
                    SizedBox(
                      width: 15.42.w,
                      height: 18.76.h,
                      child: const Icon(Icons.location_on, size: 18,),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2, // 40% of space
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: mainSpaceBet,
                      children: [
                        Text(
                          Strings.rideHistoryLocation1,
                          style: CustomStyle.availableDriverTitleTextStyle
                              .copyWith(
                            fontSize: Dimensions.extraSmallTextSize,
                          ),
                        ),
                      ],
                    ),
                    addVerticalSpace(10.h),
                    Column(
                      children: [
                        Text(
                          Strings.rideHistoryLocation2,
                          style: CustomStyle.availableDriverTitleTextStyle
                              .copyWith(
                            fontSize: Dimensions.extraSmallTextSize,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    addVerticalSpace(50.h),
                    Text(
                      Strings.totalDestination,
                      style: CustomStyle.availableDriverTitleTextStyle.copyWith(
                        fontSize: Dimensions.extraSmallTextSize,
                      ),
                    ),
                    Text(
                      Strings.totalDestinationkm,
                      style: CustomStyle.availableDriverTitleTextStyle.copyWith(
                        fontSize: Dimensions.extraSmallTextSize,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      );
    }

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
            const CustomAppbar(
                gapBetweenBackButtonAndTitle: 0,
                gapBetweenTitlAndAppbar: 0,
                title: ''),
            Positioned(
              bottom: 17.h,
              left: 26.w,
              right: 25.w,
              child: Container(
                width: 363.w,
                height: 356.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    Dimensions.radius,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 25.4),
                      width: 363.w,
                      height: 132.h,
                      decoration: BoxDecoration(
                        color: CustomColor.primaryColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.radius),
                          topRight: Radius.circular(Dimensions.radius),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 28.w,
                        ),
                        child: sendReqTop(),
                      ),
                    ),
                    addVerticalSpace(21.h),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.w,
                        right: 19.w,
                      ),
                      child: Row(
                        mainAxisAlignment: mainSpaceBet,
                        children: [
                          Column(
                            crossAxisAlignment: crossStart,
                            children: [
                              Text(
                                Strings.estimatedTime,
                                style:
                                CustomStyle.sendRequestBottomTitleTextStyle,
                              ),
                              addVerticalSpace(3.h),
                              Text(
                                Strings.time,
                                style: CustomStyle
                                    .sendRequestBottomSubtitleTextStyle,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: crossend,
                            children: [
                              Text(
                                Strings.fareEstimate,
                                style:
                                CustomStyle.sendRequestBottomTitleTextStyle,
                              ),
                              addVerticalSpace(3.h),
                              Text(
                                Strings.fare,
                                style: CustomStyle
                                    .sendRequestBottomSubtitleTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    addVerticalSpace(20.h),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 19.w,
                        right: 19.9.w,
                      ),
                      child: SizedBox(
                        width: 324.15.w,
                        height: 37.h,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              width: 2.0,
                              color: CustomColor.primaryColor,
                              style: BorderStyle.solid,
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            Strings.addPromo,
                            style: CustomStyle.dialogueTextStyle.copyWith(
                                fontSize: Dimensions.extraSmallTextSize),
                          ),
                        ),
                      ),
                    ),
                    addVerticalSpace(20.h),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 19.w,
                        right: 19.9.w,
                      ),
                      child: SizedBox(
                        width: 324.15.w,
                        height: 55.h,
                        child: DefaultButton(
                          onPresssed: () {
                            Get.toNamed(Routes.searchRideScreen);
                          },
                          title: Strings.sendPickupReq,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 389.h,
              right: 21.w,
              child: SizedBox(
                width: 67.w,
                height: 67.h,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.my_location, color: CustomColor.customIconColorTwo,),
                ),
              ),
            ),
            Positioned(
              bottom: 476.h,
              right: 21.w,
              child: SizedBox(
                width: 67.w,
                height: 67.h,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    FontAwesomeIcons.percent,
                    color: CustomColor.primaryColor,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 566.h,
              right: 21.w,
              child: SizedBox(
                width: 67.w,
                height: 67.h,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.security, color: CustomColor.primaryColor,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
