import 'package:flutter/material.dart';
import 'package:carbo/utils/custom_color.dart';
import 'dimensions.dart';

class CustomStyle {
  static var gradientBg = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        CustomColor.gradientColorStart,
        CustomColor.gradientColorEnd,
      ],
    ),
  );

  static var onboardTitleStyle = TextStyle(
    color: CustomColor.secondaryColor,
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.bold,
  );

  static var onboardSubtitleStyle = TextStyle(
    color: CustomColor.secondaryColor,
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.w500,
  );

  static var defaultButtonStyle = TextStyle(
    color: Colors.white,
    fontSize: Dimensions.extraLargeTextSize,
    fontWeight: FontWeight.w500,
  );

  static var skipStyle = TextStyle(
    color: Colors.black.withOpacity(0.6),
    fontSize: Dimensions.mediumTextSize,
    fontWeight: FontWeight.w500,
  );

  static var iconButtonStyle = TextStyle(
    color: Colors.white,
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.w500,
  );

  static var orTextStyle = TextStyle(
    color: CustomColor.secondaryColor,
    fontSize: Dimensions.smallestTextSize,
  );
  static var hintTextStyle = TextStyle(
    color: Colors.black.withOpacity(0.3),
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.w500,
  );

  static var forgotPasswordTextStyle = TextStyle(
    color: Colors.black.withOpacity(0.7),
    fontSize: Dimensions.smallTextSize,
    fontWeight: FontWeight.w500,
  );

  static var appbarTitleStyle = TextStyle(
    color: Colors.black.withOpacity(0.5),
    fontSize: Dimensions.largeTextSize,
    fontWeight: FontWeight.w500,
  );
  static var defaultFontMediumBlackStyle = TextStyle(
    color: Colors.black,
    fontSize: Dimensions.defaultTextSize,
    fontWeight: FontWeight.w500,
  );

  static var checkBoxTextStyle = TextStyle(
    color: Colors.black.withOpacity(0.5),
    fontSize: Dimensions.extraSmallTextSize,
    fontWeight: FontWeight.w500,
  );

  static var forgotPasswordTitleStyle = TextStyle(
    color: Colors.black.withOpacity(0.9),
    fontSize: Dimensions.smallTextSize,
    fontWeight: FontWeight.bold,
  );
  static var forgotPasswordSubtitleStyle = TextStyle(
    color: Colors.black.withOpacity(0.7),
    fontSize: Dimensions.extraSmallestTextSize,
  );

  static var dialogueTextStyle = TextStyle(
    color: CustomColor.primaryColor,
    fontSize: Dimensions.dialogueTextSize,
    fontWeight: FontWeight.bold,
  );
  static var dialogueTitleTextStyle = TextStyle(
    color: Colors.black.withOpacity(0.9),
    fontSize: Dimensions.extraLargeTextSize,
    fontWeight: FontWeight.bold,
  );
  static var dialogueSubtitleTextStyle = TextStyle(
    color: Colors.black.withOpacity(0.8),
    fontSize: Dimensions.extraSmallTextSize,
    fontWeight: FontWeight.bold,
  );

  static var sendRequestTopTextStyle = TextStyle(
    color: Colors.white,
    fontSize: Dimensions.extraSmallTextSize,
    fontWeight: FontWeight.bold,
  );
  static var sendRequestBottomTitleTextStyle = TextStyle(
    color: Colors.black.withOpacity(0.5),
    fontSize: Dimensions.smallestTextSize,
    fontWeight: FontWeight.bold,
  );
  static var sendRequestBottomSubtitleTextStyle = TextStyle(
    color: Colors.black.withOpacity(0.7),
    fontSize: Dimensions.extraSmallTextSize,
    fontWeight: FontWeight.bold,
  );
  static var availableDriverTitleTextStyle = TextStyle(
    color: Colors.white,
    fontSize: Dimensions.smallestTextSize,
    fontWeight: FontWeight.bold,
  );
  static var driverTotalRideTextStyle = TextStyle(
    color: Colors.black.withOpacity(0.4),
    fontSize: Dimensions.driverTotalRideTextSize,
    fontWeight: FontWeight.w500,
  );

  static var fareTextStyle = TextStyle(
    color: Colors.white,
    fontSize: Dimensions.fareTextSize,
    fontWeight: FontWeight.bold,
  );

  static var thankYouTextStyle = TextStyle(
    color: Colors.black,
    fontSize: Dimensions.thankYouTextSize,
    fontWeight: FontWeight.bold,
  );

  static var rateDriverSubtitleStyle = TextStyle(
    color: Colors.black.withOpacity(0.7),
    fontSize: Dimensions.mediumTextSize,
    fontWeight: FontWeight.bold,
  );

  static var rateDriverCardTitleStyle = TextStyle(
    color: Colors.black.withOpacity(0.8),
    fontSize: Dimensions.largeTextSize,
    fontWeight: FontWeight.bold,
  );

  static var tipTextStyle = TextStyle(
    color: Colors.black.withOpacity(0.3),
    fontSize: Dimensions.mediumTextSize,
    fontWeight: FontWeight.w500,
  );

  static var profileNameStyle = TextStyle(
    color: Colors.black,
    fontSize: Dimensions.profileNameTextSize,
    fontWeight: FontWeight.bold,
  );

  static var drawerTextStyle = TextStyle(
    color: Colors.black,
    fontSize: Dimensions.smallTextSize,
    fontWeight: FontWeight.w500,
  );
}
