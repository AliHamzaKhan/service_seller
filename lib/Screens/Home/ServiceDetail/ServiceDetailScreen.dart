

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Models/MyService.dart';


import '../../../Utils/Colors.dart';
import '../../../Utils/ThemeHelper.dart';
import 'BookServiceDetailScreen.dart';
import 'components/ServiceTypeCheck.dart';



class ServiceDetailScreen extends StatelessWidget {
  MyService? service;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: backButton(
            icon: Icons.arrow_back_outlined,
            onTap: () {
              Get.back();
            }),
        title: Text("Service Detail", style: TextStyle(color: colorSecondary, fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Get.width,
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      // image: NetworkImage(service!.image!)
                        image: AssetImage("assets/images/get_started_background_one.jpg"),
                        fit: BoxFit.cover
                    )
                ),
              ),
              SizedBox(height: 10),
             // Text("About our ${service!.serviceType!} Service", style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 22),),
              SizedBox(height: 10),
            //  Text("About our ${service!.description!}", style: TextStyle(color: textColor, fontWeight: FontWeight.normal, fontSize: 20,), maxLines: 3),
              SizedBox(height: 20),

             // ServiceTypeCheck(serviceType: service!.serviceType!),

              Text("Do you have any special instructions?", style: TextStyle(color: textColor, fontSize: 20),),
              Text("Optional", style: TextStyle(color: textColor.withOpacity(0.5), fontSize: 18),),
              const SizedBox(height: 10),
              TextFormField(
                minLines: 2,
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: "Example: you will need to bring a gate pass, I will not be home and am leaving the key under the mat, etc.",
                  hintStyle: TextStyle(color: textColor.withOpacity(0.7), fontSize: 18),
                  labelStyle: TextStyle(color: textColor.withOpacity(0.7), fontSize: 18),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colorPrimary, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colorPrimary, width: 1),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        padding: const EdgeInsets.all(10),
        child: Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: colorSecondary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "BOOK NOW",
                    style: TextStyle(color: colorBackground, fontSize: 22),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward_outlined,
                    color: colorBackground,
                    size: 18,
                  )
                ],
              ),
              onPressed: () {
                Get.to(()=>BookServiceDetailScreen());
              },
            )),
      ),
    );
  }
}
