import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

import '../../Utils/Colors.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  var isSeller = false;

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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      CircleAvatar(
                        radius: 25, // Image radius
                        backgroundImage: NetworkImage('imageUrl'),
                      ),
                      SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("UserName"), SizedBox(height: 10),Text("userNumber")],
                      )
                    ],
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.all(20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: colorPrimary),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Seller mode"),
                          FlutterSwitch(
                            onToggle: (value) {
                              setState(() {
                                isSeller = !isSeller;
                              });
                            },
                            value: isSeller,
                            height: 30,
                            width: 70,
                            activeColor: colorDarkGrey,
                            inactiveColor: colorBackground,
                            toggleSize: 45.0,
                            // borderRadius: 30.0,
                            padding: 8.0,
                            showOnOff: false,
                            valueFontSize: 10,
                            toggleColor: colorBlack,
                            activeToggleColor: colorBlack,
                            inactiveTextColor: colorBackground,
                            activeTextColor: colorDarkGrey,

                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
          Container(
            color: colorBackground,
          )
        ],
      ),
    );
  }
}
