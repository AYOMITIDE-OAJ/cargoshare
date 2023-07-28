import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carbo/utils/custom_style.dart';
import 'package:carbo/utils/dimensions.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: TextInputAction.next,
      onSaved: (value) => controller.text = value!,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: CustomStyle.hintTextStyle,
        contentPadding: EdgeInsets.only(
          left: 32.1.w,
          top: 15.h,
          bottom: 16.h,
        ),
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
