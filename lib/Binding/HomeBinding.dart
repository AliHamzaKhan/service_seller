

import 'package:get/get.dart';
import 'package:service_seller/Controllers/HomeController.dart';

class HomeBinding implements Bindings{
  @override
  void dependencies() {
   Get.put(HomeController());
  }

}