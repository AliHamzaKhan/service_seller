

import 'package:flutter/material.dart';
import 'package:service_seller/Models/ServiceType.dart';

import '../../../Models/MyService.dart';
import 'ServiceCardDesign.dart';

class ServicesGridList extends StatelessWidget {
  ServicesGridList({Key? key, required this.servicesList}) : super(key: key);
  List<ServiceType> servicesList;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: servicesList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: servicesList.length == 1 ? 1 : 2
        ),
        itemBuilder: (context, index){
          return ServiceCardDesign(serviceType: servicesList[index],);
    });
  }
}
