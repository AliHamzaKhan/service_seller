

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../Models/Banner.dart';
import 'BannerCardDesign.dart';

class BannerListDesign extends StatelessWidget {
  BannerListDesign({Key? key,required this.bannersList }) : super(key: key);
  List<MyBanner> bannersList;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: bannersList.map((e) => BannerCardDesign(myBanner: e,)).toList(),
            options: CarouselOptions(
              height: 120,
              aspectRatio: 16/9,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              onPageChanged: (index, reason){},
              scrollDirection: Axis.horizontal,
            )
        ),
        Container()
      ],
    );
  }
}
