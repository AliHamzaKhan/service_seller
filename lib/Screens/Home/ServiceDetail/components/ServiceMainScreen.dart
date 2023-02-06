
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Models/MyService.dart';
import '../../../../Utils/Colors.dart';


class ServiceMainScreen extends StatelessWidget {
  ServiceMainScreen({Key? key}) : super(key: key);
  MyService? service;
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: NetworkImage(service!.image!)
                  )
                ),
              ),
              SizedBox(height: 10),
              Text("About our ${service!.serviceType!}", style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 22),),
              SizedBox(height: 10),
              Text("About our ${service!.description!}", style: TextStyle(color: textColor, fontWeight: FontWeight.normal, fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
