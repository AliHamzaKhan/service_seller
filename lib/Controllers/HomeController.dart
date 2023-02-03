

import 'package:get/get.dart';
import 'package:service_seller/Models/ServiceType.dart';

import '../Models/Banner.dart';
import '../Models/Category.dart';
import '../Utils/ServiceDemoData.dart';

class HomeController extends GetxController{

  static HomeController instance = Get.find();

  RxList<MyBanner> bannersList = <MyBanner>[].obs;
  var isBannerLoaded = false.obs;

  RxList<ServiceType> servicesList = <ServiceType>[].obs;
  var isCategoryLoaded = false.obs;

  loadBanner() async {}
  loadService() async {
    servicesList.addAll(demoServicesType);
  }

  @override
  void onInit() {
    loadBanner();
    loadService();
    super.onInit();
  }
}