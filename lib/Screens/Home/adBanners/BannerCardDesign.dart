

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
        fit: BoxFit.fill,
        imageBuilder: (context, imageProvider) => Container(
          height: 100,
          decoration: BoxDecoration(
              color: colorPrimary,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover
              )
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${myBanner.bannerName}", style: TextStyle(color: textColor, fontSize: 22, fontWeight: FontWeight.bold),),
                    //  SizedBox(height: 20),
                      Text("${myBanner.bannerText}%", style: TextStyle(color: textColor, fontSize: 17))
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
        placeholder: (context, url) => Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}
