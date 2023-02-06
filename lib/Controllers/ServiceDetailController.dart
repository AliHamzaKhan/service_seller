

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Screens/Home/ServiceDetail/components/AddressDetailScreen.dart';
import '../Screens/Home/ServiceDetail/components/ServiceDateAndTimeScreen.dart';
import '../Screens/Home/ServiceDetail/components/ServiceMainScreen.dart';

class ServiceDetailController extends GetxController{
  var steps = [
    ServiceMainScreen(),
    ServiceDateAndTimeScreen(),
    AddressDetailScreen(),
    SizedBox(),
  ].obs;

  var currentStep = 0.obs;

  stepState() {
    if (currentStep.value == steps.length-1) {
      return true;
    } else {
      currentStep.value++;
      return false;
    }
  }
  stepStateBack() {
    if (currentStep.value == 0) {
      return true;
    } else {
      currentStep.value--;
      return false;
    }
  }
}