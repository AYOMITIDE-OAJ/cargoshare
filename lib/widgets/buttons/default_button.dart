import 'package:flutter/material.dart';
import 'package:carbo/utils/custom_color.dart';
import 'package:carbo/utils/custom_style.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, required this.title, required this.onPresssed})
      : super(key: key);
  final String title;
  final VoidCallback onPresssed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPresssed,
      style: ElevatedButton.styleFrom(
        primary: CustomColor.primaryColor,
      ),
      child: Text(
        title,
        style: CustomStyle.defaultButtonStyle,
      ),
    );
  }
}
