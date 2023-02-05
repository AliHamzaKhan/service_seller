

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height : Get.height,
          width: Get.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/get_started_background_one.jpg"),
              fit: BoxFit.contain
            )
          ),
          child: Stack(
            children: [

            ],
          ),
        ),
    );
  }
}
