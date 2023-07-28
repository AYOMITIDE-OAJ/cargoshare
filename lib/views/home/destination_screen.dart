import 'package:carbo/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/custom_appbar.dart';
import 'package:carbo/widgets/input/default_input_text_field.dart';
import 'package:carbo/widgets/size.dart';

class DestinationScreen extends StatelessWidget {
  DestinationScreen({Key? key}) : super(key: key);
  final TextEditingController destinationController1 = TextEditingController();
  final TextEditingController destinationController2 = TextEditingController();
  final TextEditingController destinationController3 = TextEditingController();
  final TextEditingController destinationController4 = TextEditingController();
  final TextEditingController destinationController5 = TextEditingController();
  final TextEditingController destinationController6 = TextEditingController();

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
                    children: [
                      SizedBox(
                        height: 55.h,
                        child: DefaultTextInputField(
                          controller: destinationController1,
                          hintText: Strings.setLocationHint,
                          keyboardType: TextInputType.text,
                          icon:
                          const Icon(
                            Icons.my_location,
                            color: CustomColor.primaryColor,
                          ),                    ),
                      ),
                      addVerticalSpace(20.h),
                      SizedBox(
                        height: 55.h,
                        child: DefaultTextInputField(
                          controller: destinationController2,
                          hintText: Strings.destinationHint1,
                          keyboardType: TextInputType.text,
                          icon:
                          const Icon(
                            Icons.location_on,
                            color: CustomColor.primaryColor,
                          ),                    ),
                      ),
                      addVerticalSpace(40.h),
                      SizedBox(
                        height: 55.h,
                        child: DefaultTextInputField(
                          controller: destinationController3,
                          hintText: Strings.destinationHint2,
                          keyboardType: TextInputType.text,
                          icon:
                          const Icon(
                            Icons.location_on,
                            color: CustomColor.customIconColorTwo,
                          ),                    ),
                      ),
                      addVerticalSpace(20.h),
                      SizedBox(
                        height: 55.h,
                        child: DefaultTextInputField(
                          controller: destinationController4,
                          hintText: Strings.destinationHint3,
                          keyboardType: TextInputType.text,
                          icon:
                          const Icon(
                            Icons.location_on,
                            color: CustomColor.customIconColorTwo,
                          ),                   ),
                      ),
                      addVerticalSpace(20.h),
                      SizedBox(
                        height: 55.h,
                        child: DefaultTextInputField(
                          controller: destinationController5,
                          hintText: Strings.destinationHint4,
                          keyboardType: TextInputType.text,
                          icon:
                          const Icon(
                            Icons.location_on,
                            color: CustomColor.customIconColorTwo,
                          ),                  ),
                      ),
                      addVerticalSpace(20.h),
                      SizedBox(
                        height: 55.h,
                        child: DefaultTextInputField(
                          controller: destinationController6,
                          hintText: Strings.destinationHint5,
                          keyboardType: TextInputType.text,
                          icon:
                          const Icon(
                            Icons.location_on,
                            color: CustomColor.customIconColorTwo,
                          ),                  ),
                      ),
                      addVerticalSpace(20.h),
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
