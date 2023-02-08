

import 'package:flutter/material.dart';

import '../../../../Utils/Colors.dart';

class CleaningScreen extends StatefulWidget {
  const CleaningScreen({Key? key}) : super(key: key);

  @override
  State<CleaningScreen> createState() => _CleaningScreenState();
}

class _CleaningScreenState extends State<CleaningScreen> {

  var yesOrNo = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("How many cleaners do you need?", style: TextStyle(color: textColor, fontSize: 20),),
        SizedBox(
          height: 42,
          child: ListView.builder(
              itemCount: 3,
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
                  child: Text("${index+1}"),
                );
              }),
        ),
        const SizedBox(height: 20),
        Text("How many hours should they stay", style: TextStyle(color: textColor, fontSize: 20),),
        SizedBox(
          height: 42,
          child: ListView.builder(
              itemCount: 7,
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
                  child: Text("${index+2}"),
                );
              }),
        ),
        const SizedBox(height: 20),
        Text("Do you need cleaning materials?", style: TextStyle(color: textColor, fontSize: 20),),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: yesOrNo == 0 ? colorSecondary : colorPrimary,
                ),
                onPressed: (){
                  setState(() {
                    yesOrNo = 1;
                  });
                }, child: Text("No", style: TextStyle(color: colorBackground, fontSize: 20),)),
            const SizedBox(width: 25),
            TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: yesOrNo == 1 ? colorSecondary : colorPrimary,
                ),
                onPressed: (){
                  setState(() {
                    yesOrNo = 0;
                  });
                }, child: Text("Yes", style: TextStyle(color: colorBackground, fontSize: 20))),
          ],
        ),

      ],
    );
  }
}
