

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_seller/Models/ServiceType.dart';
import '../../../Utils/Colors.dart';

class ServiceCardDesign extends StatelessWidget {
  ServiceCardDesign({Key? key,required this.serviceType}) : super(key: key);
  ServiceType serviceType;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: Get.width / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: CachedNetworkImage(
            imageUrl: serviceType.serviceImage!,
           imageBuilder: (context, imageProvider) => Material(
             elevation: 8,
             shadowColor: Colors.grey.shade300,
             borderRadius: BorderRadius.circular(15),
             child: Stack(
               children: [
                 Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     image: DecorationImage(
                       image: imageProvider,
                       fit: BoxFit.fill
                     )
                   ),
                 ),
                Positioned(
                    bottom: 7,
                    left: 7,
                    child:  Text("${serviceType.serviceType}", style: TextStyle(color: colorBackground2, fontWeight: FontWeight.bold), overflow: TextOverflow.fade,))
               ],
             ),
           ),
          placeholder: (context, url) =>Material(
            elevation: 8,
            shadowColor: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300
                  ),
                ),
                Positioned(
                    bottom: 5,
                    left: 5,
                    child:  Text("${serviceType.serviceType}"))
              ],
            ),
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
