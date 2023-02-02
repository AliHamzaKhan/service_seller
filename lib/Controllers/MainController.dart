

import 'package:get/get.dart';
import 'package:service_seller/Screens/Home/HomeScreen.dart';
import 'package:service_seller/Screens/Setting/SettingScreen.dart';

import '../Screens/Chat/ChatsScreen.dart';
import '../Screens/Job/JobScreen.dart';
import '../Screens/Support/SupportScreen.dart';

class MainController extends GetxController{
  static MainController instance = Get.find();
  var pages = [
    HomeScreen(),
    JobScreen(),
    ChatsScreen(),
    SupportScreen(),
    SettingScreen()
  ];
  var currentIndex = 0.obs;

}