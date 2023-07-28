import 'package:carbo/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/custom_appbar.dart';
import 'package:carbo/widgets/input/default_input_text_field.dart';
import 'package:carbo/widgets/size.dart';

class PickupScreen extends StatelessWidget {
  PickupScreen({Key? key}) : super(key: key);

  final TextEditingController setLocationController1 = TextEditingController();
  final TextEditingController setLocationController2 = TextEditingController();
  final TextEditingController setLocationController3 = TextEditingController();
  final TextEditingController setLocationController4 = TextEditingController();
  final TextEditingController setLocationController5 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: crossStart,
            children: [
              const CustomAppbar(
                gapBetweenBackButtonAndTitle: 66,
                gapBetweenTitlAndAppbar: 36,
                title: Strings.pickupscreenTitle,
              ),
              addVerticalSpace(40.h),
              Padding(
                padding: EdgeInsets.only(
                  left: 35.6.w,
                  right: 35.6.w,
                ),
                child: Column(
                  crossAxisAlignment: crossStart,
                  children: [
                    SizedBox(
                      height: 55.h,
                      child: DefaultTextInputField(
                        controller: setLocationController1,
                        hintText: Strings.setLocationHint,
                        keyboardType: TextInputType.text,
                        icon: const Icon(
                          Icons.my_location,
                          color: CustomColor.onlineColor,
                        ),
                      ),
                    ),
                    addVerticalSpace(40.h),
                    SizedBox(
                      height: 55.h,
                      child: DefaultTextInputField(
                        controller: setLocationController2,
                        hintText: '',
                        keyboardType: TextInputType.text,
                        icon: const Icon(
                          Icons.location_on,
                          color: CustomColor.customIconColorTwo,
                        ),
                      ),
                    ),
                    addVerticalSpace(20.h),
                    SizedBox(
                      height: 55.h,
                      child: DefaultTextInputField(
                        controller: setLocationController3,
                        hintText: Strings.setLocationHint2,
                        keyboardType: TextInputType.text,
                        icon: const Icon(
                          Icons.location_on,
                          color: CustomColor.customIconColorTwo,
                        ),
                      ),
                    ),
                    addVerticalSpace(20.h),
                    SizedBox(
                      height: 55.h,
                      child: DefaultTextInputField(
                        controller: setLocationController4,
                        hintText: Strings.setLocationHint2,
                        keyboardType: TextInputType.text,
                        icon: const Icon(
                          Icons.location_on,
                          color: CustomColor.customIconColorTwo,
                        ),
                      ),
                    ),
                    addVerticalSpace(20.h),
                    SizedBox(
                      height: 55.h,
                      child: DefaultTextInputField(
                        controller: setLocationController5,
                        hintText: Strings.setLocationHint2,
                        keyboardType: TextInputType.text,
                        icon: const Icon(
                          Icons.location_on,
                          color: CustomColor.customIconColorTwo,
                        ),
                      ),
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
