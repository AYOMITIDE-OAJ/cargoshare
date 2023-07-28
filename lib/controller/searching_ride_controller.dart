import 'dart:async';

import 'package:get/get.dart';

import '../routes/routes.dart';

class SearchingRideController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    navigate();
  }

  Future<void> navigate() async {
    Timer(const Duration(seconds: 2), () {
      Get.offAndToNamed(
        Routes.availableDriverScreen,
      );
    });
  }
}
