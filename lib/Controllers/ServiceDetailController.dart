import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_seller/Screens/Home/ServiceDetail/components/StepOneScreen.dart';
import '../Models/MyService.dart';
import '../Screens/Home/ServiceDetail/components/StepTwoScreen.dart';
import '../Screens/Home/ServiceDetail/components/ServiceDateAndTimeScreen.dart';
import '../Screens/Home/ServiceDetail/components/ServiceMainScreen.dart';

class ServiceDetailController extends GetxController {
  // var steps = [
  //   ServiceMainScreen(),
  //   ServiceDateAndTimeScreen(),
  //   StepTwoScreen(),
  //   SizedBox(),
  // ].obs;

  var steps = [StepOneScreen(), StepTwoScreen()];

  var stepsData = {"step_1": false, "step_2": false};

  var currentStep = 1.obs;
  MyService? service;

  setStepData(stepData, stepValue) {
    stepsData[stepData] = stepValue;
    update();
  }
  updateStep(index){
    setStepData("step_1", true);
    currentStep.value = index;
    update();
  }
  bookService(){}
}
