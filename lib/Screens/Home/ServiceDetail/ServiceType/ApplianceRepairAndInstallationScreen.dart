

import 'package:flutter/material.dart';

import '../../../../Utils/Colors.dart';

class ApplianceRepairAndInstallationScreen extends StatefulWidget {
  const ApplianceRepairAndInstallationScreen({Key? key}) : super(key: key);

  @override
  State<ApplianceRepairAndInstallationScreen> createState() => _ApplianceRepairAndInstallationScreenState();
}

class _ApplianceRepairAndInstallationScreenState extends State<ApplianceRepairAndInstallationScreen> {
  var serviceType = ["Appliance repair" , "Appliance installation"];
  var _serviceType = 0;
  var appliances = ["Washing Machine" , "Oven" , "Dish Washer" , "Dryer" , "Fridge / Freezer" , "Water Heater" , "Other"];
  var _appliances = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "What type of service do you need?",
          style: TextStyle(color: textColor, fontSize: 20),
        ),
        const SizedBox(height: 10),
        SizedBox(
          child: ListView.builder(
              itemCount: serviceType.length,
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
                        _serviceType = index;
                      });
                    },
                    child: Row(
                      children: [
                        _serviceType == index
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
                        Text(serviceType[index])
                      ],
                    ),
                  ),
                );
              }),
        ),
        const SizedBox(height: 15),
        Text(
          "What type of appliance do you need help with?",
          style: TextStyle(color: textColor, fontSize: 20),
        ),
        const SizedBox(height: 10),
        SizedBox(
          child: ListView.builder(
              itemCount: appliances.length,
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
                        _appliances = index;
                      });
                    },
                    child: Row(
                      children: [
                        _appliances == index
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
                        Text(appliances[index])
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
