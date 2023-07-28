import 'package:carbo/utils/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/widgets/size.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppbarWithMenu extends StatelessWidget {
  const CustomAppbarWithMenu({
    Key? key,
    required this.gapBetweenBackButtonAndTitle,
    required this.gapBetweenTitlAndAppbar,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final double gapBetweenBackButtonAndTitle;
  final double gapBetweenTitlAndAppbar;
  final String title;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        addHorizontalSpace(25.4.h),
        Column(
          children: [
            addVerticalSpace(37.6.h),
            GestureDetector(
              onTap: () {
                onPress();
              },
              child: const Icon(FontAwesomeIcons.bars, color: CustomColor.primaryColor,)
            ),
          ],
        ),
        addHorizontalSpace(gapBetweenBackButtonAndTitle),
        Column(
          children: [
            addVerticalSpace(gapBetweenTitlAndAppbar),
            Text(
              title,
              style: CustomStyle.appbarTitleStyle,
            ),
          ],
        )
      ],
    );
  }
}
