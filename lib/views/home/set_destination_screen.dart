import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cupertino_modal_sheet/cupertino_modal_sheet.dart';
import 'package:carbo/utils/custom_color.dart';
import 'package:carbo/utils/dimensions.dart';
import 'package:carbo/utils/strings.dart';
import 'package:carbo/widgets/buttons/default_button.dart';
import 'package:carbo/widgets/custom_appbar.dart';
import 'package:carbo/widgets/input/default_input_text_field.dart';
import 'package:carbo/widgets/size.dart';

import 'destination_screen.dart';

class SetDestinationScreen extends StatelessWidget {
  SetDestinationScreen({Key? key}) : super(key: key);
  final TextEditingController setDestinationController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            const CustomAppbar(
                gapBetweenBackButtonAndTitle: 0,
                gapBetweenTitlAndAppbar: 0,
                title: ''),
            Positioned(
              bottom: 0,
              child: Container(
                height: 194.h,
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
                      onTap: () => showCupertinoModalSheet(
                        fullscreenDialog: true,
                        context: context,
                        builder: (context) => DestinationScreen(),
                      ),
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
                          controller: setDestinationController,
                          hintText: Strings.destinationHint1,
                          keyboardType: TextInputType.text,
                          icon:
                          const Icon(
                            Icons.location_on,
                            color: CustomColor.primaryColor,
                          ),),
                      ),
                    ),
                    addVerticalSpace(19.h),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 36.0.w,
                        right: 35.2.w,
                      ),
                      child: SizedBox(
                        height: 55.h,
                        width: 342.76.w,
                        child: DefaultButton(
                          title: Strings.setDestination,
                          onPresssed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 219.h,
              right: 21.w,
              child: SizedBox(
                width: 67.w,
                height: 67.h,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.my_location, color: CustomColor.customIconColorTwo,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
