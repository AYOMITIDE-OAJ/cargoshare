import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carbo/utils/custom_color.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/buttons/default_button.dart';
import 'package:carbo/widgets/custom_appbar.dart';
import 'package:carbo/widgets/input/default_input_text_field.dart';
import 'package:carbo/widgets/size.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController homeAddressController = TextEditingController();
  final TextEditingController officeAddressController = TextEditingController();
  final TextEditingController favDestinationController =
      TextEditingController();

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
                  image: ExactAssetImage("assets/images/home/avatar.png"),
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
                  color: CustomColor.locationContainerColor,
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

    Widget profileMenu() {
      return Padding(
        padding: EdgeInsets.only(
          left: 36.w,
          right: 35.2.w,
        ),
        child: Column(
          children: [
            SizedBox(
              width: 342.76.w,
              height: 55.h,
              child: DefaultTextInputField(
                controller: emailController,
                hintText: Strings.emailAddress,
                keyboardType: TextInputType.emailAddress,
                icon:
                const Icon(
                  FontAwesomeIcons.solidEnvelope,
                  color: CustomColor.customIconColorTwo,
                ),              ),
            ),
            addVerticalSpace(20.h),
            SizedBox(
              width: 342.76.w,
              height: 55.h,
              child: DefaultTextInputField(
                controller: phoneNumberController,
                hintText: Strings.phoneHint,
                keyboardType: TextInputType.number,
                icon:
                const Icon(
                  FontAwesomeIcons.phoneAlt,
                  color: CustomColor.customIconColorTwo,
                ),              ),
            ),
            addVerticalSpace(20.h),
            SizedBox(
              width: 342.76.w,
              height: 55.h,
              child: DefaultTextInputField(
                controller: homeAddressController,
                hintText: Strings.homeAddress,
                keyboardType: TextInputType.text,
                icon:
                const Icon(
                  FontAwesomeIcons.home,
                  color: CustomColor.customIconColorTwo,
                ),              ),
            ),
            addVerticalSpace(20.h),
            SizedBox(
              width: 342.76.w,
              height: 55.h,
              child: DefaultTextInputField(
                controller: officeAddressController,
                hintText: Strings.officeAddress,
                keyboardType: TextInputType.text,
                icon:
                const Icon(
                  FontAwesomeIcons.briefcase,
                  color: CustomColor.customIconColorTwo,
                ),              ),
            ),
            addVerticalSpace(20.h),
            SizedBox(
              width: 342.76.w,
              height: 55.h,
              child: DefaultTextInputField(
                controller: favDestinationController,
                hintText: Strings.favDestination,
                keyboardType: TextInputType.text,
                icon:
                const Icon(
                  Icons.location_on,
                  color: CustomColor.customIconColorTwo,
                ),              ),
            ),
            addVerticalSpace(41.h),
            SizedBox(
              width: 342.76.w,
              height: 55.h,
              child: DefaultButton(
                title: Strings.update,
                onPresssed: () {},
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
                gapBetweenBackButtonAndTitle: 116.w,
                gapBetweenTitlAndAppbar: 36.h,
                title: Strings.profileTitle,
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
              profileMenu(),
            ],
          ),
        )
      ),
    );
  }
}
