import 'package:get/get.dart';
import 'package:carbo/controller/searching_ride_controller.dart';

class SearchingRideBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      SearchingRideController(),
    );
  }
}
