import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:carbo/utils/custom_color.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/utils/dimensions.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/input/input_text_field.dart';
import 'package:carbo/widgets/size.dart';

class ChattingScreen extends StatelessWidget {
  ChattingScreen({Key? key}) : super(key: key);
  final bool sender = false;
  final TextEditingController typeMessageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget driverInfo() {
      return Padding(
        padding: EdgeInsets.only(
          left: 19.w,
          right: 22.w,
        ),
        child: ListTile(
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
              Text(
                Strings.bikeName,
                style: CustomStyle.sendRequestBottomTitleTextStyle,
              ),
              addHorizontalSpace(10.w),
              Text(
                Strings.bikeNumber,
                style: CustomStyle.sendRequestBottomSubtitleTextStyle,
              ),
            ],
          ),
        ),
      );
    }

    Widget chat() {
      return Padding(
        padding: EdgeInsets.only(
          left: 19.w,
          right: 22.w,
        ),
        child: Column(
          mainAxisAlignment: mainEnd,
          children: [
            sender
                ? Row(
                    mainAxisAlignment: mainEnd,
                    children: [
                      addHorizontalSpace(15.w),
                      Column(
                        crossAxisAlignment: crossStart,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 22.w),
                            child: Container(
                              height: 47.h,
                              padding:
                                  EdgeInsets.fromLTRB(15.w, 11.h, 14.w, 12.h),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.05),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0.r),
                                  bottomLeft: Radius.circular(10.0.r),
                                  topLeft: Radius.circular(10.0.r),
                                ),
                              ),
                              child: Text(
                                "I'm waiting for you",
                                style: CustomStyle.defaultFontMediumBlackStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: mainStart,
                    children: [
                      SizedBox(
                        width: 38.w,
                        height: 38.h,
                        child: CircleAvatar(
                          child: Image.asset("assets/images/home/11.png"),
                        ),
                      ),
                      addHorizontalSpace(8.w),
                      Container(
                        height: 47.h,
                        padding: EdgeInsets.fromLTRB(15.w, 11.h, 14.w, 12.h),
                        decoration: BoxDecoration(
                          color: CustomColor.primaryColor.withOpacity(0.3),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0.r),
                              bottomRight: Radius.circular(10.0.r),
                              bottomLeft: Radius.circular(10.0.r)),
                        ),
                        child: Text(
                          "I'm in traffic, sorry for late",
                          style: CustomStyle.defaultFontMediumBlackStyle,
                        ),
                      ),
                    ],
                  )
          ],
        ),
      );
    }

    Widget sendMessage() {
      return Padding(
        padding: EdgeInsets.only(
          left: 19.w,
          right: 22.w,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 253.w,
              height: 56.h,
              child: TextInputField(
                controller: typeMessageController,
                hintText: Strings.typeMessage,
                keyboardType: TextInputType.text,
              ),
            ),
            addHorizontalSpace(14.w),
            SizedBox(
              width: 55.w,
              height: 55.h,
              child: const CircleAvatar(
                backgroundColor: CustomColor.primaryColor,
                 child: Icon(FontAwesomeIcons.locationArrow, color: CustomColor.whiteColor,)
              ),
            ),
          ],
        ),
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
          Positioned(
            bottom: 49.h,
            left: 26.w,
            right: 25.w,
            child: Container(
              width: 363.w,
              height: 384.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  Dimensions.radius,
                ),
              ),
              child: Column(
                children: [
                  driverInfo(),
                  addVerticalSpace(15.5.h),
                  const Divider(),
                  addVerticalSpace(15.5.h),
                  chat(),
                  const Spacer(),
                  sendMessage(),
                  addVerticalSpace(21.h),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
