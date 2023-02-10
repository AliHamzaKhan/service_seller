import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:service_seller/Config/SizeConfig.dart';
import 'package:service_seller/Models/MyService.dart';
import 'package:service_seller/Utils/Colors.dart';

class ServiceCardDesign extends StatelessWidget {
  ServiceCardDesign({this.myService});
  MyService? myService;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Material(
      elevation: 3,
      child: Container(
        height: SizeConfig.screenHeight! / 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/get_started_background_one.jpg"),
                              fit: BoxFit.cover)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: colorBackground2),
                                child: Text(
                                  "Service name",
                                  style: TextStyle(
                                      color: colorSecondary, fontSize: 15),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                margin: EdgeInsets.all(20),
                                alignment: Alignment.center,
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: colorBackground2,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

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
                        Text(
                          "al rahim ac service",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                        ),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                "assets/images/get_started_background_one.jpg",
                                fit: BoxFit.cover,
                                width: 50,
                                height: 50,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "User name",
                              style: TextStyle(color: textColor, fontSize: 13),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 35,
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: colorSecondary),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Rs : ",
                            style:
                                TextStyle(color: colorBackground, fontSize: 17),
                          ),
                          Text(
                            "1200",
                            style:
                                TextStyle(color: colorBackground, fontSize: 17),
                          ),
                          Text(
                            "/",
                            style:
                                TextStyle(color: colorBackground, fontSize: 15),
                          ),
                          Text(
                            "hr",
                            style: TextStyle(
                                color: colorBackground,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
