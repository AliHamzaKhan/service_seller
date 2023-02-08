

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_seller/Models/MyService.dart';
import 'package:service_seller/Utils/Colors.dart';
import 'package:service_seller/Utils/PrimaryText.dart';

import '../../../../Config/SizeConfig.dart';

class LogoutOverlay extends StatefulWidget {
    LogoutOverlay({this.service});
  MyService? service;
  @override
  State<StatefulWidget> createState() => LogoutOverlayState();
}

class LogoutOverlayState extends State<LogoutOverlay> with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? scaleAnimation;


  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    scaleAnimation =
        CurvedAnimation(parent: controller!, curve: Curves.elasticInOut);

    controller!.addListener(() {
      setState(() {});
    });

    controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation!,
          child: Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(15.0),
              height: 180.0,
              decoration: ShapeDecoration(
                  color: Color.fromRGBO(41, 167, 77, 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0))),
              child: Column(
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PrimaryText(text: widget.service!.name!, color: textColor, size: 20,),
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                        }, icon: Icon(Icons.cancel_outlined, color: textColor, size: 18,))
                      ],
                    ),
                  ),
                  Container(
                    height: SizeConfig.blockSizeVertical! * 5,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(widget.service!.image!),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: PrimaryText(text: widget.service!.description!, size: 18, color: textColor,),
                  )

                ],
              )),
        ),
      ),
    );
  }
}