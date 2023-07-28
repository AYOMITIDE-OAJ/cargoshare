import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:carbo/routes/routes.dart';
import 'package:carbo/utils/custom_color.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/utils/dimensions.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/views/drawer/drawer_menu_screen.dart';
import 'package:carbo/widgets/buttons/default_button.dart';
import 'package:carbo/widgets/custom_appbar_with_menu.dart';
import 'package:carbo/widgets/input/default_input_text_field.dart';
import 'package:carbo/widgets/size.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final TextEditingController promoController = TextEditingController();
  final TextEditingController pickupSearchController = TextEditingController();
  final TextEditingController pickupSearchController2 = TextEditingController();
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Widget pointText(String text, String boldText) {
      return RichText(
        text: TextSpan(
          text: text,
          style: TextStyle(
            fontSize: Dimensions.dialogueTextSize,
            color: Colors.black.withOpacity(0.5),
          ),
          children: <TextSpan>[
            TextSpan(
              text: boldText,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
    }

    Widget textInput() {
      return TextFormField(
        autofocus: false,
        controller: promoController,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.next,
        onSaved: (value) => promoController.text = value!,
        decoration: InputDecoration(
          hintText: Strings.enterPromo,
          hintStyle: CustomStyle.hintTextStyle,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.black.withOpacity(0.05),
        ),
      );
    }

    Future safeTravels() {
      return Get.defaultDialog(
        titlePadding: EdgeInsets.zero,
        title: '',
        content: Container(
          width: 363.w,
          height: 465.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              Dimensions.radius,
            ),
          ),
          child: Column(
            mainAxisAlignment: mainStart,
            crossAxisAlignment: crossStart,
            children: [
              addVerticalSpace(31.h),
              SizedBox(
                width: 500.w,
                height: 170.h,
                child: Image.asset("assets/images/home/safe-travel.png"),

              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.w,
                  right: 18.9.w,
                ),
                child: Column(
                  mainAxisAlignment: mainStart,
                  crossAxisAlignment: crossStart,
                  children: [
                    Text(
                      Strings.safeTravels,
                      style: CustomStyle.forgotPasswordTitleStyle,
                    ),
                    addVerticalSpace(8.h),
                    Text(
                      Strings.getCoverage,
                      style: CustomStyle.orTextStyle.copyWith(
                        fontSize: Dimensions.dialogueTextSize,
                      ),
                    ),
                    addVerticalSpace(28.h),
                    pointText(
                      Strings.point1,
                      Strings.point1Bold,
                    ),
                    addVerticalSpace(7.h),
                    pointText(
                      Strings.point2,
                      Strings.point2Bold,
                    ),
                    addVerticalSpace(7.h),
                    Text(
                      Strings.learnMore,
                      style: CustomStyle.dialogueTextStyle,
                    ),
                    addVerticalSpace(7.h),
                    SizedBox(
                      width: 324.15.w,
                      height: 55.h,
                      child: DefaultButton(
                          title: Strings.gotIt, onPresssed: () {}),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Future discount() {
      return Get.defaultDialog(
        titlePadding: EdgeInsets.zero,
        title: '',
        content: Container(
          width: 500.w,
          height: 465.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              Dimensions.radius,
            ),
          ),
          child: Column(
              mainAxisAlignment: mainStart,
              crossAxisAlignment: crossStart,
              mainAxisSize: mainMin,
              children: [
                addVerticalSpace(31.h),
                SizedBox(
                  width: 350.w,
                  height: 170.h,
                  child: Image.asset("assets/images/home/discount.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 18.9.w),
                  child: Column(
                    crossAxisAlignment: crossStart,
                    children: [
                      Text(
                        Strings.addPromo,
                        style: CustomStyle.dialogueTitleTextStyle,
                      ),
                      addVerticalSpace(10.4.h),
                      textInput(),
                      addVerticalSpace(7.1.h),
                      Center(
                        child: Text(
                          Strings.promoNotApplied,
                          style: CustomStyle.dialogueSubtitleTextStyle,
                        ),
                      ),
                      Center(
                        child: Text(
                          Strings.addCodeManually,
                          textAlign: TextAlign.center,
                          style:
                              CustomStyle.forgotPasswordSubtitleStyle.copyWith(
                            fontSize: Dimensions.dialogueTextSize,
                          ),
                        ),
                      ),
                      addVerticalSpace(16.h),
                      SizedBox(
                        width: 324.15.w,
                        height: 55.h,
                        child: DefaultButton(
                            title: Strings.apply, onPresssed: () {}),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: const CustomDrawerMenuScreen(),
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
            CustomAppbarWithMenu(
              gapBetweenBackButtonAndTitle: 0,
              gapBetweenTitlAndAppbar: 0,
              title: "",
              onPress: () {
                _key.currentState!.openDrawer();
              },
            ),
            Positioned(
              bottom: 0,
              child: GestureDetector(
                child: Container(
                  height: 113.h,
                  width: 414.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius),
                      topRight: Radius.circular(Dimensions.radius),
                    ),
                  ),
                  child: Column(
                    children: [
                      addVerticalSpace(15.h),
                      GestureDetector(
                        onTap: () => _openBottomSheetModal(context),
                        child: Container(
                          width: 49.w,
                          height: 8.h,
                          decoration: BoxDecoration(
                            color: CustomColor.secondaryColor,
                            borderRadius: BorderRadius.circular(
                              Dimensions.radius,
                            ),
                          ),
                        ),
                      ),
                      addVerticalSpace(15.h),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 36.0.w,
                          right: 35.2.w,
                        ),
                        child: SizedBox(
                          height: 55.h,
                          child: DefaultTextInputField(
                            controller: pickupSearchController,
                            hintText: Strings.searchDestination,
                            keyboardType: TextInputType.text,
                            icon: const Icon(
                              Icons.location_on,
                              color: CustomColor.primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  _openBottomSheetModal(context);
                },
              ),
            ),
            Positioned(
              bottom: 180.h,
              right: 21.w,
              child: SizedBox(
                width: 67.w,
                height: 67.h,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.my_location,
                    color: CustomColor.customIconColorTwo,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 267.h,
              right: 21.w,
              child: GestureDetector(
                onTap: discount,
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
            ),
            Positioned(
              bottom: 354.h,
              right: 21.w,
              child: GestureDetector(
                onTap: safeTravels,
                child: SizedBox(
                  width: 67.w,
                  height: 67.h,
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.security,
                      color: CustomColor.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _openBottomSheetModal(BuildContext context) {
    return showCupertinoModalSheet(
      fullscreenDialog: true,
      context: context,
      builder: (context) => bottomNav(),
    );
  }

  Widget bottomNav() {
    return Material(
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            addVerticalSpace(15.h),
            Container(
              width: 49.w,
              height: 8.h,
              decoration: BoxDecoration(
                color: CustomColor.secondaryColor,
                borderRadius: BorderRadius.circular(
                  Dimensions.radius,
                ),
              ),
            ),
            addVerticalSpace(20.h),
            Padding(
              padding: EdgeInsets.only(
                left: 36.0.w,
                right: 35.2.w,
              ),
              child: SizedBox(
                height: 55.h,
                child: DefaultTextInputField(
                  controller: pickupSearchController,
                  hintText: Strings.searchDestination,
                  keyboardType: TextInputType.text,
                  icon: const Icon(
                    FontAwesomeIcons.envelope,
                    color: CustomColor.whiteColor,
                  ),
                ),
              ),
            ),
            addVerticalSpace(20.h),
            Padding(
              padding: EdgeInsets.only(
                left: 36.0.w,
                right: 35.2.w,
              ),
              child: SizedBox(
                height: 55.h,
                child: DefaultTextInputField(
                  controller: pickupSearchController2,
                  hintText: Strings.setPickUpLocation,
                  keyboardType: TextInputType.text,
                  icon: const Icon(
                    FontAwesomeIcons.envelope,
                    color: CustomColor.whiteColor,
                  ),
                ),
              ),
            ),
            addVerticalSpace(20.h),
            Padding(
              padding: EdgeInsets.only(
                left: 36.0.w,
                right: 35.2.w,
              ),
              child: SizedBox(
                width: 342.76.w,
                height: 55.h,
                child: DefaultButton(
                  title: Strings.setDestination,
                  onPresssed: () {
                    Get.toNamed(
                      Routes.setDestinationScreen,
                    );
                  },
                ),
              ),
            ),
            addVerticalSpace(20.h),
            Padding(
              padding: EdgeInsets.only(
                left: 36.0.w,
                right: 35.2.w,
              ),
              child: SizedBox(
                width: 342.76.w,
                height: 55.h,
                child: DefaultButton(
                  title: Strings.setPickUpLocation,
                  onPresssed: () {
                    Get.toNamed(
                      Routes.setPickupLocationScreen,
                    );
                  },
                ),
              ),
            ),
            addVerticalSpace(20.h),
            Padding(
              padding: EdgeInsets.only(
                left: 36.0.w,
                right: 35.2.w,
              ),
              child: SizedBox(
                width: 342.76.w,
                height: 55.h,
                child: DefaultButton(
                  title: Strings.continueText,
                  onPresssed: () {
                    Get.toNamed(Routes.sendRequestScreen);
                  },
                ),
              ),
            ),
            addVerticalSpace(20.h),
          ],
        ),
      ),
    );
  }
}
