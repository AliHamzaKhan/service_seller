

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class CategoryShimmerDesign extends StatelessWidget {
  const CategoryShimmerDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 100,
      child: Shimmer.fromColors(
        baseColor: Colors.grey,
        highlightColor: Colors.white,
        child: Text(
          'Loading...',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 35.0,
            fontWeight:
            FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
