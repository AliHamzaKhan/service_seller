

import 'package:get/get.dart';
import 'package:service_seller/Models/ServiceType.dart';
import '../Models/Banner.dart';
import '../Models/MyService.dart';
import '../Utils/ServiceDemoData.dart';

class HomeController extends GetxController{

  static HomeController instance = Get.find();

  RxList<MyBanner> bannersList = <MyBanner>[].obs;
  var isBannerLoaded = true.obs;

  RxList<ServiceType> servicesList = <ServiceType>[].obs;
  var isCategoryLoaded = true.obs;

  loadBanner() async {
    bannersList.addAll(demoBannerData);
  }
  loadService() async {
    servicesList.addAll(demoServicesType);
    print(servicesList.length);
  }

  @override
  void onInit() {
    loadBanner();
    loadService();
    super.onInit();
  }
}