
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utils/Colors.dart';


class ServiceMainScreen extends StatelessWidget {
  const ServiceMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                width: Get.width,
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
