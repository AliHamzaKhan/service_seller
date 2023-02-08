

import 'package:flutter/material.dart';

import '../../../../Utils/Colors.dart';

class PestControlScreen extends StatefulWidget {
  const PestControlScreen({Key? key}) : super(key: key);

  @override
  State<PestControlScreen> createState() => _PestControlScreenState();
}

class _PestControlScreenState extends State<PestControlScreen> {
  var pests = ["General","Cockroaches","Ants","Bed bugs"];
  var homes = ["Apartment","Villa" ];
  var sizeHome = ["Studio","1BR","2BR","3BR","4BR","5BR"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("What type of pest control treatment do you need?", style: TextStyle(color: textColor, fontSize: 20),),
        SizedBox(
          height: 42,
          child: ListView.builder(
              itemCount:pests.length,
              shrinkWrap: false,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: colorSecondary)
                  ),
                  child: Text(pests[index]),
                );
              }),
        ),
        const SizedBox(height: 20),
        Text("What type of home do you live in?", style: TextStyle(color: textColor, fontSize: 20),),
        SizedBox(
          height: 42,
          child: ListView.builder(
              itemCount:homes.length,
              shrinkWrap: false,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: colorSecondary)
                  ),
                  child: Text(homes[index]),
                );
              }),
        ),
        const SizedBox(height: 20),
        Text("What is the size of your home?", style: TextStyle(color: textColor, fontSize: 20),),
        SizedBox(
          height: 42,
          child: ListView.builder(
              itemCount:sizeHome.length,
              shrinkWrap: false,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: colorSecondary)
                  ),
                  child: Text(sizeHome[index]),
                );
              }),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
