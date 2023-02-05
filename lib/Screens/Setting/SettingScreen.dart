import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:service_seller/Controllers/SettingController.dart';
import 'package:service_seller/Screens/Setting/SellerSettingScreen.dart';
import 'package:service_seller/Screens/Setting/UserSettingScreen.dart';

import '../../Utils/Colors.dart';


class SettingScreen extends StatelessWidget {
  var controller = Get.put(SettingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: Column(
        children: [
          Container(
            height: Get.height * 0.22,
            color: colorBackground,
            child: Stack(
              children: [
                Container(
                  height: Get.height * 0.17,
                  color: colorSecondary,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 10),
                        CircleAvatar(
                          radius: 30, // Image radius
                          backgroundImage: NetworkImage('imageUrl'),
                        ),
                        SizedBox(width: 17),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("UserName", style: TextStyle(color: colorBackground2, fontSize: 20, fontWeight: FontWeight.bold),),
                            SizedBox(height: 3),
                            Text("userNumber", style: TextStyle(color: colorBackground2, fontSize: 20, fontWeight: FontWeight.normal)),
                            SizedBox(height: 10),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: colorBackground,
                        boxShadow: [
                          BoxShadow(
                            color: colorTitle.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Seller mode", style: TextStyle(color: colorBlack, fontSize: 18),),
                         
                          Row(
                            children: [
                              Text("Off", style: TextStyle(color: colorBlack, fontSize: 15)),
                             Obx(() =>  CupertinoSwitch(
                                 activeColor: colorTitle,
                                 thumbColor: colorDarkGrey,
                                 trackColor: colorBackground2,
                                 value: controller.isSeller.value,
                                 onChanged: (value){
                                   controller.isSeller.value = value;
                                 }),),
                              Text("On", style: TextStyle(color: colorBlack, fontSize: 15))
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
          Expanded(child: Obx(() => controller.isSeller.value ? SellerSettingScreen() : UserSettingScreen()))
        ],
      ),
    );
  }
}
