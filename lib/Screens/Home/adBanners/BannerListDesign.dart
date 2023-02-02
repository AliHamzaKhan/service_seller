

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../Models/Banner.dart';
import 'BannerCardDesign.dart';

class BannerListDesign extends StatefulWidget {
  BannerListDesign({Key? key,required this.bannersList }) : super(key: key);
  List<MyBanner> bannersList;

  @override
  State<BannerListDesign> createState() => _BannerListDesignState();
}

class _BannerListDesignState extends State<BannerListDesign> {
  late List<Widget> images;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            items: widget.bannersList.map((e) => BannerCardDesign(myBanner: e,)).toList(),
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

  @override
  void initState() {
    super.initState();
    //images = widget.bannersList.map((e) => MyBanner()).toList();
  }
}
