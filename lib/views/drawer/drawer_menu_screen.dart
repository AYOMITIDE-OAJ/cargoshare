import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:carbo/routes/routes.dart';
import 'package:carbo/utils/custom_color.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/custom_appbar.dart';
import 'package:carbo/widgets/size.dart';

class CustomDrawerMenuScreen extends StatelessWidget {
  const CustomDrawerMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget profilePic() {
      return Center(
        child: Stack(
          children: [
            Container(
              width: 118.w,
              height: 118.h,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 5.w,
                  color: CustomColor.secondaryColor,
                ),
                shape: BoxShape.circle,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: ExactAssetImage("assets/images/home/11.png"),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 4,
              child: Container(
                width: 22.w,
                height: 24.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 3,
                    color: Colors.transparent,
                  ),
                  color: CustomColor.onlineColorTwo,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget nameBar() {
      return Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Container(
            width: 33.w,
          ),
          Text(
            Strings.driverName,
            style: CustomStyle.profileNameStyle,
          ),
          const Icon(FontAwesomeIcons.pen, color: CustomColor.customIconColorTwo,)
        ],
      );
    }

    Widget drawerMenu() {
      return Padding(
        padding: EdgeInsets.only(
          left: 24.w,
        ),
        child: Column(
          crossAxisAlignment: crossStart,
          children: [
            GestureDetector(
              onTap: () => Get.toNamed(Routes.profileScreen),
              child: Row(
                children: [
                  SizedBox(
                      width: 23.63.w,
                      height: 50.63.h,
                      child:
                      const Icon(FontAwesomeIcons.user, color: CustomColor.customIconColorTwo,)),
                  addHorizontalSpace(14.3.w),
                  Text(
                    Strings.profileTitle,
                    style: CustomStyle.drawerTextStyle,
                  ),
                ],
              ),
            ),
            const Divider(
              color: CustomColor.secondaryColor,
            ),
            GestureDetector(
              child: Row(
                children: [
                  SizedBox(
                      width: 23.63.w,
                      height: 50.63.h,
                      child: const Icon(FontAwesomeIcons.creditCard, color: CustomColor.customIconColorTwo),),
                  addHorizontalSpace(14.3.w),
                  Text(
                    Strings.paymentHistory,
                    style: CustomStyle.drawerTextStyle,
                  ),
                ],
              ),
            ),
            const Divider(
              color: CustomColor.secondaryColor,
            ),
            GestureDetector(
              onTap: () => Get.toNamed(Routes.rideHistoryScreen),
              child: Row(
                children: [
                  SizedBox(
                      width: 23.63.w,
                      height: 50.63.h,
                      child: const Icon(FontAwesomeIcons.carAlt, color: CustomColor.customIconColorTwo,)),
                  addHorizontalSpace(14.3.w),
                  Text(
                    Strings.rideHistoryTitle,
                    style: CustomStyle.drawerTextStyle,
                  ),
                ],
              ),
            ),
            const Divider(
              color: CustomColor.secondaryColor,
            ),
            Row(
              children: [
                SizedBox(
                    width: 23.63.w,
                    height: 50.63.h,
                    child: const Icon(Icons.help, color: CustomColor.customIconColorTwo,)),
                addHorizontalSpace(14.3.w),
                Text(
                  Strings.help,
                  style: CustomStyle.drawerTextStyle,
                ),
              ],
            ),
            const Divider(
              color: CustomColor.secondaryColor,
            ),
            Row(
              children: [
                SizedBox(
                    width: 23.63.w,
                    height: 50.63.h,
                    child: const Icon(Icons.settings_outlined, color: CustomColor.customIconColorTwo,)),
                addHorizontalSpace(14.3.w),
                Text(
                  Strings.settings,
                  style: CustomStyle.drawerTextStyle,
                ),
              ],
            ),
            const Divider(
              color: CustomColor.secondaryColor,
            ),
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: CustomColor.screenBGColor,
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          CustomAppbar(
            gapBetweenBackButtonAndTitle: 122.w,
            gapBetweenTitlAndAppbar: 36.h,
            title: Strings.drawerMenuTitle,
          ),
          addVerticalSpace(34.h),
          profilePic(),
          addVerticalSpace(11.h),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 26.8.w,
            ),
            child: nameBar(),
          ),
          addVerticalSpace(34.5.h),
          drawerMenu(),
        ],
      ),
    );
  }
}
