import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:service_seller/Screens/Home/ServiceDetail/components/StepOneScreen.dart';
import '../Models/MyService.dart';
import '../Screens/Home/ServiceDetail/components/StepTwoScreen.dart';

class ServiceDetailController extends GetxController {

  var steps = [StepOneScreen(), StepTwoScreen()];

  var stepsData = {"step_1": false, "step_2": false};

  var currentStep = 0.obs;
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
