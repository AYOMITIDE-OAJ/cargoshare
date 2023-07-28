import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carbo/utils/custom_color.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/buttons/default_button.dart';
import 'package:carbo/widgets/custom_appbar.dart';
import 'package:carbo/widgets/input/default_input_text_field.dart';
import 'package:carbo/widgets/input/input_text_field.dart';
import 'package:carbo/widgets/size.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddCardScreen extends StatelessWidget {
  AddCardScreen({Key? key}) : super(key: key);
  final TextEditingController nametController = TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: CustomColor.screenBGColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppbar(
              gapBetweenBackButtonAndTitle: 103.w,
              gapBetweenTitlAndAppbar: 36.h,
              title: Strings.addCardTitle,
            ),
            addVerticalSpace(29.4.h),
            Padding(
              padding: EdgeInsets.only(
                left: 35.6.w,
                right: 35.6.w,
              ),
              child: Column(
                crossAxisAlignment: crossStart,
                children: [
                  Text(
                    Strings.nameOnCard,
                    style: CustomStyle.defaultFontMediumBlackStyle,
                  ),
                  addVerticalSpace(20.4.h),
                  SizedBox(
                    height: 55.h,
                    child: TextInputField(
                      controller: nametController,
                      hintText: Strings.enterName,
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  addVerticalSpace(36.4.h),
                  Text(
                    Strings.cardNumber,
                    style: CustomStyle.defaultFontMediumBlackStyle,
                  ),
                  addVerticalSpace(20.4.h),
                  SizedBox(
                    height: 55.h,
                    child: DefaultTextInputField(
                      controller: cardNumberController,
                      hintText: Strings.cardNumber,
                      keyboardType: TextInputType.text,
                      icon:
                      const Icon(
                        FontAwesomeIcons.ccVisa,
                        color: CustomColor.customIconColorTwo,
                      ),                  ),
                  ),
                  addVerticalSpace(36.4.h),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: crossStart,
                        children: [
                          Text(
                            Strings.expiryDate,
                            style: CustomStyle.defaultFontMediumBlackStyle,
                          ),
                          addVerticalSpace(20.4.h),
                          SizedBox(
                            width: 171.38.w,
                            height: 55.h,
                            child: TextInputField(
                              controller: expiryController,
                              hintText: Strings.dateFormat,
                              keyboardType: TextInputType.text,
                            ),
                          ),
                        ],
                      ),
                      addHorizontalSpace(28.2.w),
                      Column(
                        crossAxisAlignment: crossStart,
                        children: [
                          Text(
                            Strings.cvv,
                            style: CustomStyle.defaultFontMediumBlackStyle,
                          ),
                          addVerticalSpace(20.4.h),
                          SizedBox(
                            width: 143.21.w,
                            height: 55.h,
                            child: TextInputField(
                              controller: cvvController,
                              hintText: Strings.enter,
                              keyboardType: TextInputType.text,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  addVerticalSpace(155.9.h),
                  SizedBox(
                    width: 342.76.w,
                    height: 55.h,
                    child: DefaultButton(
                      title: Strings.save,
                      onPresssed: () {},
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )
    ));
  }
}
