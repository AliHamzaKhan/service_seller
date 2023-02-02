

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Models/Category.dart';
import '../../../Utils/Colors.dart';

class CategoryCardDesign extends StatelessWidget {
  CategoryCardDesign({Key? key,required this.category}) : super(key: key);
  Category category;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: Get.width / 2,
        child: CachedNetworkImage(
            imageUrl: category.image!,
           imageBuilder: (context, imageProvider) => Material(
             elevation: 8,
             shadowColor: Colors.grey.shade300,
             borderRadius: BorderRadius.circular(10),
             child: Stack(
               children: [
                 Container(
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: imageProvider
                     )
                   ),
                 ),
                Positioned(
                    bottom: 5,
                    left: 5,
                    child:  Text("${category.name}", style: TextStyle(color: colorBackground),))
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
                    child:  Text("${category.name}"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
