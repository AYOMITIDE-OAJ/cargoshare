import 'package:get/get.dart';
import 'package:carbo/binding/searching_ride_binding.dart';
import 'package:carbo/binding/splash_binding.dart';
import 'package:carbo/views/auth/sign_in/sign_in_screen.dart';
import 'package:carbo/views/home/add_card_screen.dart';
import 'package:carbo/views/home/available_driver_screen.dart';
import 'package:carbo/views/home/cancel_trip_screen.dart';
import 'package:carbo/views/home/chatting_screen.dart';
import 'package:carbo/views/home/destination_screen.dart';
import 'package:carbo/views/drawer/drawer_menu_screen.dart';
import 'package:carbo/views/home/home_screen.dart';
import 'package:carbo/views/home/location_screen.dart';
import 'package:carbo/views/home/payment_method_screen.dart';
import 'package:carbo/views/home/pickup_screen.dart';
import 'package:carbo/views/profile/profile_screen.dart';
import 'package:carbo/views/home/rate_driver_screen.dart';
import 'package:carbo/views/home/ride_history_screen.dart';
import 'package:carbo/views/home/searching_ride_screen.dart';
import 'package:carbo/views/home/send_request_screen.dart';
import 'package:carbo/views/home/set_destination_screen.dart';
import 'package:carbo/views/home/set_pickup_location_screen.dart';
import 'package:carbo/views/onboard/onboard.dart';
import 'package:carbo/views/splash/splash_screen.dart';
import 'package:carbo/views/forgot_password/forgot_password_screen.dart';
import 'package:carbo/views/forgot_password/reset_password_screen.dart';
import 'package:carbo/views/auth/sign_in/signin_with_phone_screen.dart';
import '../views/auth/otp/otp_screen.dart';
import '../views/auth/signup/signup_screen.dart';

class Routes {
  static const String splashScreen = '/splashScreen';
  static const String onboardScreen = '/onBoardScreen';
  static const String signInScreen = '/signInScreen';
  static const String signInWithPhoneScreen = '/signInWithPhoneScreen';
  static const String otpScreen = '/otpScreen';
  static const String forgotPasswordScreen = '/forgotPasswordScreen';
  static const String resetPasswordScreen = '/resetPasswordScreen';
  static const String signupScreen = '/signupScreen';
  static const String homeScreen = '/homeScreen';
  static const String locationScreen = '/locationScreen';
  static const String setPickupLocationScreen = '/setPickupLocationScreen';
  static const String pickupScreen = '/pickupScreen';
  static const String setDestinationScreen = '/setDestinationScreen';
  static const String destinationScreen = '/destinationScreen';
  static const String sendRequestScreen = '/sendRequestScreen';
  static const String searchRideScreen = '/searchRideScreen';
  static const String availableDriverScreen = '/availableDriverScreen';
  static const String paymentMethodScreen = '/paymentMethodScreen';
  static const String addCardScreen = '/addCardScreen';
  static const String chattingScreen = '/chattingScreen';
  static const String cancelTripScreen = '/cancelTripScreen';
  static const String rateDriverScreen = '/rateDriverScreen';
  static const String customDrawerMenuScreen = '/customDrawerMenuScreen';
  static const String profileScreen = '/profileScreen';
  static const String rideHistoryScreen = '/rideHistoryScreen';

  static var list = [
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: onboardScreen,
      page: () => OnboardScreen(),
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
    ),
    GetPage(
      name: signInWithPhoneScreen,
      page: () => SigninWithPhoneScreen(),
    ),
    GetPage(
      name: otpScreen,
      page: () => const OtpScreen(),
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: locationScreen,
      page: () => LocationScreen(),
    ),
    GetPage(
      name: setPickupLocationScreen,
      page: () => SetPickupLocationScreen(),
    ),
    GetPage(
      name: pickupScreen,
      page: () => PickupScreen(),
    ),
    GetPage(
      name: setDestinationScreen,
      page: () => SetDestinationScreen(),
    ),
    GetPage(
      name: destinationScreen,
      page: () => DestinationScreen(),
    ),
    GetPage(
      name: sendRequestScreen,
      page: () => SendRequestScreen(),
    ),
    GetPage(
      name: searchRideScreen,
      page: () => const SearchingRideScreen(),
      binding: SearchingRideBinding(),
    ),
    GetPage(
      name: availableDriverScreen,
      page: () => const AvailableDrivercreen(),
    ),
    GetPage(
      name: paymentMethodScreen,
      page: () => PaymentMethodScreen(),
    ),
    GetPage(
      name: addCardScreen,
      page: () => AddCardScreen(),
    ),
    GetPage(
      name: chattingScreen,
      page: () => ChattingScreen(),
    ),
    GetPage(
      name: cancelTripScreen,
      page: () => CancelTripScreen(),
    ),
    GetPage(
      name: rateDriverScreen,
      page: () => RateDriverScreen(),
    ),
    GetPage(
      name: customDrawerMenuScreen,
      page: () => const CustomDrawerMenuScreen(),
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
    ),
    GetPage(
      name: rideHistoryScreen,
      page: () => const RideHistoryScreen(),
    ),
  ];
}
