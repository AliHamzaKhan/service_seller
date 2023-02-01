import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_seller/Controllers/HomeController.dart';
import 'package:service_seller/Screens/Home/adBanners/BannerListDesign.dart';
import 'package:service_seller/Screens/Home/adBanners/BannerShimmerDesign.dart';
import '../../Constant/MainAccess.dart';
import '../../Utils/Colors.dart';
import 'Catogery/CategoryCardDesign.dart';
import 'Catogery/CategoryShimmerDesign.dart';
import 'HeaderWithSearchBar.dart';

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
        actions: [],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWithSearchBar(
                userName: "Ali",
              ),
              SizedBox(height: 20),
              Text(
                "Promotions",
                style: TextStyle(
                    color: colorBlack,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Obx(() => controller.isBannerLoaded.value
                  ? BannerListDesign(bannersList: controller.bannersList)
                  : BannerShimmerDesign()),
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
                      onPressed: () {},
                      child: Text(
                        "View all",
                        style: TextStyle(color: colorSecondary, fontSize: 18),
                      ))
                ],
              ),
              SizedBox(height: 10),
              Obx(() => controller.isCategoryLoaded.value
                  ? CategoryCardDesign()
                  : CategoryShimmerDesign())
            ],
          ),
        ),
      ),
    );
  }
}
