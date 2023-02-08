import 'package:flutter/material.dart';
import '../ServiceType/AcServicesScreen.dart';
import '../ServiceType/CleaningScreen.dart';
import '../ServiceType/PestControlScreen.dart';

class ServiceTypeCheck extends StatelessWidget {
  ServiceTypeCheck({Key? key, this.serviceType}) : super(key: key);
  String? serviceType;

  @override
  Widget build(BuildContext context) {
    return check(type: serviceType);
  }

  check({type}){
    switch(type){
      case "Ac Services" :
        return AcServicesScreen();
      case "Moving" :
        return SizedBox();
      case "Appliance Repair And Installation" :
        return SizedBox();
      case "Baby Sitting" :
        return SizedBox();
      case "Carpet Cleaning" :
        return SizedBox();
      case "House Cleaning" :
        return CleaningScreen();
      case "Doctor At Home" :
        return SizedBox();
      case "Electrician" :
        return SizedBox();
      case "Furniture Assembly" :
        return SizedBox();
      case "Carpenter" :
        return SizedBox();
      case "Construction" :
        return SizedBox();
      case "Lab Tests At Home" :
        return SizedBox();
      case "Laundry" :
        return SizedBox();
      case "Locksmith" :
        return SizedBox();
      case "Maintenance" :
        return SizedBox();
      case "Man Saloon" :
        return SizedBox();
      case "Painter" :
        return SizedBox();
      case "Nurse At Home" :
        return SizedBox();
      case "Personal Trainer At Home" :
        return SizedBox();
      case "Pet Grooming" :
        return SizedBox();
      case "Pest Control" :
        return PestControlScreen();
      case "Plumber" :
        return SizedBox();
      case "Sanitization" :
        return SizedBox();
      case "Tv Mounting" :
        return SizedBox();
      case "Water Tank Cleaning" :
        return SizedBox();
      case "Women Saloon And Spa" :
        return SizedBox();

      default :
        return SizedBox();

    }
  }
}
