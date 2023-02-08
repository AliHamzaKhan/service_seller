import 'package:flutter/material.dart';

import '../../../../Utils/Colors.dart';

class AcServicesScreen extends StatefulWidget {
  const AcServicesScreen({Key? key}) : super(key: key);

  @override
  State<AcServicesScreen> createState() => _AcServicesStateScreen();
}

class _AcServicesStateScreen extends State<AcServicesScreen> {
  var acServices = [
    "AC cleaning",
    "AC installation"
        "AC repair"
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "What type of pest control treatment do you need?",
          style: TextStyle(color: textColor, fontSize: 20),
        ),
        const SizedBox(height: 10),
        SizedBox(
          child: ListView.builder(
              itemCount: acServices.length,
              shrinkWrap: false,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: colorSecondary)),
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    child: Row(
                      children: [
                        _currentIndex == index
                            ? Icon(
                                Icons.radio_button_checked_outlined,
                                color: colorSecondary,
                                size: 20,
                              )
                            : Icon(
                                Icons.radio_button_off_outlined,
                                color: colorSecondary,
                                size: 20,
                              ),
                        const SizedBox(width: 5),
                        Text(acServices[index])
                      ],
                    ),
                  ),
                );
              }),
        ),
        const SizedBox(height: 10),
        TextButton(
            onPressed: () {},
            child: Text(
              "View Difference",
              style: TextStyle(color: colorSecondary),
            )),
        const SizedBox(height: 15),
        Text(
          "What is the size of your home?",
          style: TextStyle(color: textColor, fontSize: 20),
        ),
        SizedBox(
          height: 42,
          child: ListView.builder(
              itemCount: 15,
              shrinkWrap: false,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: colorSecondary)),
                  child: Text("${index + 1}}"),
                );
              }),
        ),
      ],
    );
  }
}
