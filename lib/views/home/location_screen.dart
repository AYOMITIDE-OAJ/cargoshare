import 'package:carbo/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/custom_appbar.dart';
import 'package:carbo/widgets/input/default_input_text_field.dart';
import 'package:carbo/widgets/size.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LocationScreen extends StatelessWidget {
  LocationScreen({Key? key}) : super(key: key);
  final TextEditingController pickupLocationController =
      TextEditingController();
  final TextEditingController pickupSearchController = TextEditingController();
  final TextEditingController setHomeAddressController =
      TextEditingController();
  final TextEditingController setWorkAddressController =
      TextEditingController();
  final TextEditingController setonMapdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: crossStart,
            mainAxisAlignment: mainStart,
            children: [
              const CustomAppbar(
                gapBetweenBackButtonAndTitle: 0,
                gapBetweenTitlAndAppbar: 0,
                title: "",
              ),
              addVerticalSpace(29.4.h),
              Padding(
                padding: EdgeInsets.only(
                  left: 36.0.w,
                  right: 35.2.w,
                ),
                child: Column(
                  crossAxisAlignment: crossStart,
                  children: [
                    Text(
                      Strings.pickup,
                      style: CustomStyle.defaultFontMediumBlackStyle,
                    ),
                    addVerticalSpace(20.h),
                    SizedBox(
                      height: 55.h,
                      child: DefaultTextInputField(
                        controller: pickupLocationController,
                        hintText: Strings.pickupHint,
                        keyboardType: TextInputType.text,
                        icon:
                        const Icon(
                          Icons.emoji_people,
                          color: CustomColor.customIconColorTwo,
                        ),                    ),
                    ),
                    addVerticalSpace(20.h),
                    SizedBox(
                      height: 55.h,
                      child: DefaultTextInputField(
                        controller: pickupSearchController,
                        hintText: Strings.searchDestination,
                        keyboardType: TextInputType.text,
                        icon:
                        const Icon(
                          Icons.location_on,
                          color: CustomColor.primaryColor,
                        ),                    ),
                    ),
                    addVerticalSpace(48.h),
                    Text(
                      Strings.home,
                      style: CustomStyle.defaultFontMediumBlackStyle,
                    ),
                    addVerticalSpace(20.h),
                    SizedBox(
                      height: 55.h,
                      child: DefaultTextInputField(
                        controller: setHomeAddressController,
                        hintText: Strings.setHome,
                        keyboardType: TextInputType.text,
                        icon:
                        const Icon(
                          FontAwesomeIcons.home,
                          color: CustomColor.customIconColorTwo,
                        ),                    ),
                    ),
                    addVerticalSpace(18.h),
                    Text(
                      Strings.work,
                      style: CustomStyle.defaultFontMediumBlackStyle,
                    ),
                    addVerticalSpace(20.h),
                    SizedBox(
                      height: 55.h,
                      child: DefaultTextInputField(
                        controller: setWorkAddressController,
                        hintText: Strings.setWorkAddress,
                        keyboardType: TextInputType.text,
                        icon:
                        const Icon(
                          FontAwesomeIcons.briefcase,
                          color: CustomColor.customIconColorTwo,
                        ),
                      ),
                    ),
                    addVerticalSpace(20.h),
                    SizedBox(
                      height: 55.h,
                      child: DefaultTextInputField(
                        controller: setonMapdController,
                        hintText: Strings.setOnMap,
                        keyboardType: TextInputType.text,
                        icon:
                        const Icon(
                          FontAwesomeIcons.mapMarked,
                          color: CustomColor.customIconColorTwo,
                        ),                    ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
