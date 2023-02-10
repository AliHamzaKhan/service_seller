

import 'package:flutter/material.dart';

import '../../../../../Models/MyService.dart';
import '../ServiceType/ServiceTypeCardDesign.dart';
import 'ServiceCardDesign.dart';

class ServiceGridDesign extends StatelessWidget {
  ServiceGridDesign({required this.myServices, this.length});

  List<MyService> myServices;
  int? length;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: length ?? myServices.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: myServices.length == 1 ? 1 : 2
        ),
        itemBuilder: (context, index){
          return ServiceCardDesign(myService:  myServices[index],);
        });
  }
}
