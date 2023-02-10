

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class ServiceGridShimmerDesign extends StatelessWidget {
  const ServiceGridShimmerDesign({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 10,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2),
        itemBuilder: (context, index) => Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.white,
          child: Container(
            height: (Get.width / 2),
            color: Colors.white30,
          ),
        ));
  }
}
