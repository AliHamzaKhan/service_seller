
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_seller/Controllers/HomeController.dart';
import 'package:service_seller/Screens/Home/adBanners/BannerListDesign.dart';
import 'package:service_seller/Screens/Home/adBanners/BannerShimmerDesign.dart';
import '../../Utils/Colors.dart';
import 'HeaderWithSearchBar.dart';
import 'Services/ServiceGridList.dart';
import 'Services/ServiceShimmerDesign.dart';
import 'ViewAll/ViewAllServicesScreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  var controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_outlined,
              size: 22,
              color: colorTitle,
            )),
        title: Text(
          "Karachi Service",
          style: TextStyle(
              color: colorTitle, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWithSearchBar(
                userName: "Ali",
              ),
              const SizedBox(height: 20),
              Text(
                "Promotions",
                style: TextStyle(
                    color: colorBlack,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Obx(() => controller.isBannerLoaded.value
                  ? BannerListDesign(bannersList: controller.bannersList)
                  : const BannerShimmerDesign()),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Services",
                    style: TextStyle(
                        color: colorBlack,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(()=> ViewAllServicesScreen());
                      },
                      child: Text(
                        "View all",
                        style: TextStyle(color: colorSecondary, fontSize: 18),
                      ))
                ],
              ),
              const SizedBox(height: 10),
              Obx(() => controller.isCategoryLoaded.value
                  ? ServicesGridList(
                servicesList: controller.servicesList,
              )
                  : const ServiceShimmerDesign()
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
