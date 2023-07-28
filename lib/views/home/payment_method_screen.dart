import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:carbo/routes/routes.dart';
import 'package:carbo/utils/custom_color.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/utils/dimensions.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/buttons/default_button.dart';
import 'package:carbo/widgets/custom_appbar.dart';
import 'package:carbo/widgets/input/default_input_text_field.dart';
import 'package:carbo/widgets/size.dart';

class PaymentMethodScreen extends StatelessWidget {
  PaymentMethodScreen({Key? key}) : super(key: key);
  final TextEditingController cashPaymentController = TextEditingController();
  final TextEditingController addCardController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.screenBGColor,
        body: Padding(
          padding: EdgeInsets.only(
            left: 36.w,
            right: 35.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: crossStart,
              children: [
                CustomAppbar(
                  gapBetweenBackButtonAndTitle: 32.w,
                  gapBetweenTitlAndAppbar: 36.h,
                  title: Strings.paymentTitle,
                ),
                addVerticalSpace(38.h),
                Container(
                  width: 343.w,
                  height: 116.h,
                  decoration: BoxDecoration(
                    color: CustomColor.primaryColor,
                    borderRadius: BorderRadius.circular(Dimensions.radius),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 9.h,
                          right: 16.w,
                        ),
                        child: Row(
                          mainAxisAlignment: mainEnd,
                          children: [
                            Text(
                              Strings.billToPay,
                              style: CustomStyle.availableDriverTitleTextStyle
                                  .copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      addVerticalSpace(12.h),
                      Text(
                        Strings.fare,
                        style: CustomStyle.fareTextStyle,
                      ),
                    ],
                  ),
                ),
                addVerticalSpace(28.4.h),
                Text(
                  Strings.currentMethod,
                  style: CustomStyle.defaultFontMediumBlackStyle,
                ),
                addVerticalSpace(20.4.h),
                SizedBox(
                  height: 55.h,
                  child: DefaultTextInputField(
                    controller: cashPaymentController,
                    hintText: Strings.cashPayment,
                    keyboardType: TextInputType.text,
                    icon:
                    const Icon(
                      FontAwesomeIcons.moneyBill,
                      color: CustomColor.customIconColorTwo,
                    ),                ),
                ),
                addVerticalSpace(38.h),
                Text(
                  Strings.cardType,
                  style: CustomStyle.defaultFontMediumBlackStyle,
                ),
                addVerticalSpace(20.4.h),
                SizedBox(
                  height: 55.h,
                  child: DefaultTextInputField(
                    controller: cashPaymentController,
                    hintText: Strings.addCard,
                    keyboardType: TextInputType.text,
                    icon:
                    const Icon(
                      FontAwesomeIcons.plusCircle,
                      color: CustomColor.customIconColorTwo,
                    ),                ),
                ),
                addVerticalSpace(144.6.h),
                SizedBox(
                  width: 342.76.w,
                  height: 55.h,
                  child: DefaultButton(
                    title: Strings.continueText,
                    onPresssed: () {
                      Get.toNamed(Routes.addCardScreen);
                    },
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
