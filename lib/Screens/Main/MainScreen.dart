import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_seller/Controllers/MainController.dart';
import '../../Utils/Colors.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  var controller = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Obx(() => controller.pages[controller.currentIndex.value]),
      bottomNavigationBar: GetBuilder<MainController>(
        builder: (controller){
          return Container(
            margin: EdgeInsets.all(20),
            height: size.width * .140,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.15),
                  blurRadius: 30,
                  offset: Offset(0, 10),
                ),
              ],
              borderRadius: BorderRadius.circular(50),
            ),
            child: ListView.builder(
              itemCount: controller.pages.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: size.width * .010),
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  controller.currentIndex.value = index;
                  controller.update();
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      margin: EdgeInsets.only(
                        bottom: index == controller.currentIndex.value ? 0 : size.width * .020,
                        right: size.width * .0322,
                        left: size.width * .0322,
                      ),
                      width: size.width * .115,
                      height: index == controller.currentIndex.value ? size.width * .010 : 0,
                      decoration: BoxDecoration(
                        color: colorSecondary,
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(10),
                        ),
                      ),
                    ),
                    Icon(
                      listOfIcons[index],
                      size: size.width * .050,
                      color: index == controller.currentIndex.value
                          ? colorSecondary
                          : colorBlack,
                    ),
                    SizedBox(height: size.width * .02),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.calendar_today,
    Icons.message,
    Icons.support,
    Icons.person,
  ];
}
