import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_seller/Config/SizeConfig.dart';
import 'package:service_seller/Controllers/HomeController.dart';
import 'package:service_seller/Screens/Home/adBanners/BannerListDesign.dart';
import 'package:service_seller/Screens/Home/adBanners/BannerShimmerDesign.dart';
import '../../Utils/Colors.dart';
import 'HeaderWithSearchBar.dart';
import 'ServicesType/components/ServiceType/ServiceTypeGridList.dart';
import 'ServicesType/components/ServiceType/ServiceTypeShimmerDesign.dart';
import 'ViewAll/ViewAllServicesScreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  var controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Image.asset(
            "assets/images/logo-no-background.png",
            fit: BoxFit.fill,
            width: 100,
            height: 40,
          ),
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
              buildRow(
                  title: "Popular Services",
                  showViewAll: true,
                  onClick: () {
                    Get.to(() => ViewAllServicesScreen(
                          servicesList: controller.servicesList,
                        ));
                  }),
              const SizedBox(height: 10),
              Obx(() => controller.isCategoryLoaded.value
                  ? ServiceTypeGridList(
                      servicesList: controller.servicesList,
                    )
                  : const ServiceTypeShimmerDesign()),
              const SizedBox(height: 10),
              buildRow(title: "Cleaning", showViewAll: false),
              const SizedBox(height: 10),
              buildRow(title: "Laundry", showViewAll: false),
              const SizedBox(height: 10),
              buildRow(title: "Handyman Services", showViewAll: false),
              const SizedBox(height: 10),
              buildRow(title: "Pest Control", showViewAll: false),
              const SizedBox(height: 10),
              buildRow(title: "Spa and Saloon", showViewAll: false),
              const SizedBox(height: 10),
              buildRow(title: "Pet Grooming", showViewAll: false),
              const SizedBox(height: 10),
              buildRow(title: "Appliances", showViewAll: false),
              const SizedBox(height: 10),
              buildRow(title: "Baby Sitting", showViewAll: false),
              const SizedBox(height: 10),
              buildRow(title: "Moving and Storage", showViewAll: false),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Row buildRow({title, onClick, showViewAll}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              color: colorBlack, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        showViewAll
            ? TextButton(
                onPressed: onClick,
                child: Text(
                  "View all",
                  style: TextStyle(color: colorSecondary, fontSize: 18),
                ))
            : SizedBox()
      ],
    );
  }
}
