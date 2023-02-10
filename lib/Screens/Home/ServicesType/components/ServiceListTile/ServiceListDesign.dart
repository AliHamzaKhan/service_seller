import 'package:flutter/material.dart';

import '../../../../../Models/MyService.dart';
import 'ServiceCardDesign.dart';

class ServiceListDesign extends StatelessWidget {
  ServiceListDesign({required this.myServices, this.length});

  final List<MyService> myServices;
  final int? length;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: length ?? myServices.length,
        itemBuilder: (context, index) {
      return ServiceCardDesign(myService: myServices[index],);
    });
  }
}
