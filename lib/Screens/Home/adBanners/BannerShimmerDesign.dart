

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class BannerShimmerDesign extends StatelessWidget {
  const BannerShimmerDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white,
      child:Column(
        children: [
            Container(
              height: 100,
              color: Colors.white30,
            )
        ],
      ),
    );
  }
}
