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
          return Material(
            color: colorBackground,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 70,
              width: Get.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: colorBackground,
                boxShadow: [
                  BoxShadow(
                    color: colorBackground.withOpacity(.50),
                    blurRadius: 30,
                    offset: Offset(10, 10),
                  ),
                ],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.pages.length,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      controller.currentIndex.value = index;
                      controller.update();
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.fastLinearToSlowEaseIn,
                          margin: EdgeInsets.only(
                            // bottom: index == controller.currentIndex.value ? 0 : 10,
                            top: index == controller.currentIndex.value ? 0 : 10,
                            right: 10,
                            left: 10,
                          ),
                          width: 50,
                          height: index == controller.currentIndex.value ? 5 : 0,
                          decoration: BoxDecoration(
                            color: colorPrimary,
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(10),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              listOfIcons[index],
                              size: index == controller.currentIndex.value ? 27 : 20,
                              color: index == controller.currentIndex.value
                                  ? colorPrimary
                                  : colorBlack,
                            ),

                            Text(listOfString[index],
                              style: TextStyle(
                                fontSize: 15,
                                color: index == controller.currentIndex.value
                                    ? colorPrimary
                                    : colorBlack,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
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
  List<String> listOfString = [
    "Home",
    "Jobs",
    "Chats",
    "Support",
    "profile"
  ];
}
