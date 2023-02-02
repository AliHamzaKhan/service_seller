

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utils/ThemeHelper.dart';

class ServiceScreen extends StatelessWidget {
  ServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: backButton(icon: Icons.arrow_back_outlined, onTap: (){
            Get.back();
          }),
      ),
    );
  }
}
