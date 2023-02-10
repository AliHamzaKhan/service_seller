

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:service_seller/Config/SizeConfig.dart';
import 'package:service_seller/Utils/Colors.dart';

class ServiceCardDesign extends StatelessWidget {
  const ServiceCardDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Material(
      child: Container(
        height: SizeConfig.screenHeight! / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)
        ),
        child: Stack(
         children: [
           Center(
             child: Container(
               height: 35,
               alignment: Alignment.center,
               constraints: BoxConstraints(maxWidth: 150),
               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: colorSecondary
               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Text("Rs : ", style: TextStyle(color: colorBackground, fontSize: 17),),
                   Text("1200", style: TextStyle(color: colorBackground, fontSize: 17),),
                  Text("/", style: TextStyle(color: colorBackground, fontSize: 15),),
                   Text("hr", style: TextStyle(color: colorBackground, fontSize: 17, fontWeight: FontWeight.bold),),
                 ],
               )
             ),
           ),
           Column(
             children: [
               Expanded(flex : 1 ,child: Container(
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(10),
                       topRight: Radius.circular(10),
                     )
                 ),
               )),
               Expanded(flex : 1 ,child: Container(
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(
                       bottomLeft: Radius.circular(10),
                       bottomRight: Radius.circular(10),
                     )
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SizedBox(height: 20),
                     RatingBarIndicator(
                       rating: 2.75,
                       itemBuilder: (context, index) => const Icon(
                         Icons.star,
                         color: Colors.amber,
                       ),
                       itemCount: 5,
                       itemSize: 20,
                       direction: Axis.horizontal,
                     ),
                   ],
                 ),
               ),

               ),
             ],
           )
         ],
        ),
      ),
    );
  }
}
