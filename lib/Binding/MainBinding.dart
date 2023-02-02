

import 'package:get/get.dart';

import '../Controllers/MainController.dart';

class MainBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(MainController());
  }

}