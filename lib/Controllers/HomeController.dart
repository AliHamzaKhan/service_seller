

import 'package:get/get.dart';

import '../Models/Banner.dart';
import '../Models/Category.dart';

class HomeController extends GetxController{

  static HomeController instance = Get.find();

  RxList<MyBanner> bannersList = <MyBanner>[].obs;
  var isBannerLoaded = false.obs;

  RxList<Category> categoryList = <Category>[].obs;
  var isCategoryLoaded = false.obs;

  loadBanner() async {}
  loadCategory() async {}

  @override
  void onInit() {
    loadBanner();
    loadCategory();
    super.onInit();
  }
}