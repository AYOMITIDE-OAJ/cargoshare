import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carbo/utils/custom_color.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/utils/dimensions.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/buttons/default_button.dart';
import 'package:carbo/widgets/custom_appbar.dart';
import 'package:carbo/widgets/input/input_text_field.dart';
import 'package:carbo/widgets/size.dart';

class RateDriverScreen extends StatelessWidget {
  RateDriverScreen({Key? key}) : super(key: key);
  final TextEditingController typeMessageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget rateDriver() {
      return Container(
        width: 363.w,
        height: 550.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            Dimensions.radius,
          ),
        ),
        child: Column(
          children: [
            addVerticalSpace(19.h),
            SizedBox(
              width: 70.w,
              height: 70.h,
              child: CircleAvatar(
                backgroundColor: CustomColor.primaryColor,
                child: Image.asset(
                  "assets/images/home/11.png",
                ),
              ),
            ),
            addVerticalSpace(21.h),
            Text(
              Strings.driverName,
              style: CustomStyle.rateDriverCardTitleStyle,
            ),
            addVerticalSpace(13.2.h),
            Text(
              Strings.rateTrip,
              style: CustomStyle.rateDriverSubtitleStyle.copyWith(
                color: Colors.black.withOpacity(0.4),
              ),
            ),
            addVerticalSpace(10.5.h),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 2.w),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: CustomColor.primaryColor,
                size: 10,
              ),
              onRatingUpdate: (rating) {},
            ),
            addVerticalSpace(15.2.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.9.w,
              ),
              child: SizedBox(
                width: 324.15.w,
                height: 85.9.h,
                child: TextInputField(
                  controller: typeMessageController,
                  hintText: Strings.writeComments,
                  keyboardType: TextInputType.text,
                ),
              ),
            ),
            addVerticalSpace(2.h),
            Text(
              Strings.giveTip,
              style: CustomStyle.rateDriverSubtitleStyle.copyWith(
                color: Colors.black.withOpacity(0.4),
              ),
            ),
            addVerticalSpace(15.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18.9.w,
              ),
              child: Container(
                width: 324.15.w,
                height: 55.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    Dimensions.radius,
                  ),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.2),
                    width: 2.w,
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.w,
                      ),
                      child: Text(
                        Strings.noTip,
                        style: CustomStyle.tipTextStyle,
                      ),
                    ),
                    VerticalDivider(
                      thickness: 2,
                      color: Colors.black.withOpacity(0.2),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.w,
                      ),
                      child: Text(
                        Strings.tk20,
                        style: CustomStyle.tipTextStyle,
                      ),
                    ),
                    VerticalDivider(
                      thickness: 2,
                      color: Colors.black.withOpacity(0.2),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.w,
                      ),
                      child: Text(
                        Strings.tk50,
                        style: CustomStyle.tipTextStyle,
                      ),
                    ),
                    VerticalDivider(
                      thickness: 2,
                      color: Colors.black.withOpacity(0.2),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.w,
                      ),
                      child: Text(
                        Strings.tk100,
                        style: CustomStyle.tipTextStyle,
                      ),
                    ),
                    VerticalDivider(
                      thickness: 2,
                      color: Colors.black.withOpacity(0.2),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.w,
                      ),
                      child: Text(
                        Strings.other,
                        style: CustomStyle.tipTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            addVerticalSpace(15.2.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18.9.w,
              ),
              child: SizedBox(
                width: 324.15.w,
                height: 55.h,
                child: DefaultButton(
                  onPresssed: () {},
                  title: Strings.submit,
                ),
              ),
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.screenBGColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppbar(
                gapBetweenBackButtonAndTitle: 96.w,
                gapBetweenTitlAndAppbar: 36.h,
                title: Strings.rateDriverTitle,
              ),
              addVerticalSpace(20.6.h),
              Image.asset("assets/images/home/verification-icon.png"),
              addVerticalSpace(18.5.h),
              Text(
                Strings.thankYou,
                style: CustomStyle.thankYouTextStyle,
              ),
              addVerticalSpace(17.5.h),
              Text(
                Strings.paymentComplete,
                style: CustomStyle.rateDriverSubtitleStyle,
              ),
              addVerticalSpace(25.h),
              rateDriver(),
              addVerticalSpace(14.h),
            ],
          ),
        ),
      ),
    );
  }
}
