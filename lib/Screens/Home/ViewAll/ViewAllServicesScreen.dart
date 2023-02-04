

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Models/ServiceType.dart';
import '../../../Utils/Colors.dart';
import '../../../Utils/ThemeHelper.dart';

class ViewAllServicesScreen extends StatelessWidget {
  ViewAllServicesScreen({Key? key, required this.servicesList}) : super(key: key);
  List<ServiceType> servicesList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: backButton(
           onTap: (){
             Get.back();
           },
          icon: Icons.arrow_back
        ),
        title: Text("Services",style: TextStyle(
            color: colorTitle, fontSize: 25, fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListView.separated(itemBuilder: (context, index){
          return InkWell(
            onTap: (){

            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(servicesList[index].serviceType!, style: TextStyle(color:colorDarkGrey, fontSize: 20 , fontWeight: FontWeight.w500, letterSpacing: 1.5),),
            ),
          );
        }, separatorBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Divider(color: colorDarkGrey,),
          );
        }, itemCount: servicesList.length),
      ),
    );
  }
}
