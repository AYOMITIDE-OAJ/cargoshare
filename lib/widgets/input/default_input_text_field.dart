import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carbo/utils/custom_color.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/utils/dimensions.dart';

class DefaultTextInputField extends StatelessWidget {
  const DefaultTextInputField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    required this.icon,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: TextInputAction.next,
      onSaved: (value) => controller.text = value!,
      decoration: InputDecoration(
        prefixIcon: Container(
          width: 66.w,
          height: 55.h,
          margin: EdgeInsets.only(right: 17.w),
          decoration: BoxDecoration(
            color: CustomColor.textInputIconBgColor,
            borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
          ),
          child: icon,
        ),
        hintText: hintText,
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
}
