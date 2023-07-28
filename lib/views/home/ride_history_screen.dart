import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carbo/utils/custom_color.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/utils/dimensions.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/custom_appbar.dart';
import 'package:carbo/widgets/size.dart';

class RideHistoryScreen extends StatelessWidget {
  const RideHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget mapInteractionCard() => Padding(
          padding: EdgeInsets.only(
            left: 36.w,
            right: 35.w,
          ),
          child: Column(
            children: [
              Container(
                width: 393.w,
                height: 120.h,
                padding: EdgeInsets.only(
                  left: 23.w,
                  right: 23.w,
                  top: 9.6.h,
                  bottom: 10.9.h,
                ),
                margin: EdgeInsets.only(bottom: 10.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(Dimensions.radius),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: mainCenter,
                        crossAxisAlignment: crossCenter,
                        children: [
                          SizedBox(
                            width: 15.42.w,
                            height: 18.76.h,
                            child: const Icon(Icons.emoji_people, size: 15, color: CustomColor.customIconColorTwo,)
                          ),
                          addVerticalSpace(2.h),
                          SizedBox(
                            height: 20.h,
                            child: const VerticalDivider(
                              color: CustomColor.secondaryColor,
                              thickness: 2,
                            ),
                          ),
                          addVerticalSpace(2.h),
                          SizedBox(
                            width: 15.42.w,
                            height: 18.76.h,
                            child:
                              const Icon(Icons.location_on, size: 15, color: CustomColor.customIconColorTwo,),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 5.w,
                        ),
                        child: Column(
                          mainAxisAlignment: mainCenter,
                          crossAxisAlignment: crossCenter,
                          children: [
                            Column(
                              children: [
                                Text(
                                  Strings.rideHistoryLocation1,
                                  style: CustomStyle
                                      .availableDriverTitleTextStyle
                                      .copyWith(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            addVerticalSpace(4.4.h),
                            Column(
                              children: [
                                Text(
                                  Strings.rideHistoryLocation2,
                                  style: CustomStyle
                                      .availableDriverTitleTextStyle
                                      .copyWith(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisSize: mainMin,
                        children: [
                          const VerticalDivider(
                            color: CustomColor.primaryColor,
                            thickness: 1,
                          ),
                          Column(
                            mainAxisAlignment: mainStart,
                            crossAxisAlignment: crossStart,
                            children: [
                              Text(
                                Strings.estimatedTime,
                                style:
                                    CustomStyle.sendRequestBottomTitleTextStyle,
                              ),
                              addVerticalSpace(3.9.h),
                              Text(
                                Strings.time,
                                style: CustomStyle
                                    .sendRequestBottomSubtitleTextStyle,
                              ),
                              addVerticalSpace(5.5.h),
                              Text(
                                Strings.fareEstimate,
                                style:
                                    CustomStyle.sendRequestBottomTitleTextStyle,
                              ),
                              addVerticalSpace(4.7.h),
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
                  ],
                ),
              ),
            ],
          ),
        );
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.screenBGColor,
        body: Column(
          children: [
            CustomAppbar(
              gapBetweenBackButtonAndTitle: 91.w,
              gapBetweenTitlAndAppbar: 36.h,
              title: Strings.rideHistoryTitle,
            ),
            addVerticalSpace(37.h),
            Expanded(
              child: ListView.builder(
                  itemCount: 50,
                  itemBuilder: (context, indedx) {
                    return mapInteractionCard();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
