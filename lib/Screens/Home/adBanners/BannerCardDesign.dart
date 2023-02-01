

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:service_seller/Models/Banner.dart';
import '../../../Utils/Colors.dart';

class BannerCardDesign extends StatelessWidget {
  BannerCardDesign({Key? key,required this.myBanner}) : super(key: key);
  MyBanner myBanner;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
        imageUrl: myBanner.bannerImage!,
        imageBuilder: (context, imageProvider) => Container(
          height: 100,
          decoration: BoxDecoration(
              color: colorPrimary,
              borderRadius: BorderRadius.circular(7),
              image: DecorationImage(
                image: imageProvider
              )
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${myBanner.bannerName}"),
                      SizedBox(height: 20),
                      Text("${myBanner.bannerText}")
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: OutlinedButton(

                    onPressed: (){}, child: Text("Book Now", style: TextStyle(color: colorSecondary, fontSize: 15),),
                    style:ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),            )
                ),
              ),
            ],
          ),
        ) ,
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}
