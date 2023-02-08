import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Controllers/ServiceDetailController.dart';
import '../../../Utils/Colors.dart';
import '../../../Utils/DotWidget.dart';
import '../../../Utils/ThemeHelper.dart';

class ServiceDetailScreen extends StatelessWidget {
  ServiceDetailScreen({Key? key}) : super(key: key);

  var controller = Get.put(ServiceDetailController());
  final List<int> steps = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: backButton(
            icon: Icons.arrow_back_outlined,
            onTap: () {
              Get.back();
            }),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30),
          // child: Obx(() => Container(
          //       padding: const EdgeInsets.symmetric(horizontal: 30),
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //         children: [
          //           for (int i = 0; i < controller.stepsData.length; i++)
          //             Icon(
          //               i == controller.currentStep.value
          //                   ? Icons.circle
          //                   : Icons.circle_outlined,
          //               // Icons.circle ,
          //               color: i == controller.currentStep.value
          //                   ? colorSecondary
          //                   : colorPrimary.withOpacity(0.7),
          //               size: i == controller.currentStep.value ? 24.0 : 18.0,
          //             )
          //         ],
          //       ),
          //     ))
          child:  GetBuilder<ServiceDetailController>(builder: (controller) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              controller.stepsData["step_1"] == false
                  ? Icon(
                Icons.radio_button_checked,
                size: 50,
                color: colorPrimary,
              )
                  : Icon(
                Icons.check_circle,
                size: 50,
                color: colorPrimary,
              ),
              DotWidget(
                dashColor: colorPrimary,
                dashHeight: 2,
                dashWidth: 10,
                emptyWidth: 20,
              ),
              controller.stepsData["step_2"] == false
                  ? Icon(
                Icons.radio_button_checked,
                size: 50,
                color: colorPrimary,
              )
                  : Icon(
                Icons.check_circle,
                size: 50,
                color: colorPrimary,
              ),
              SizedBox(width: 10),
            ],
          ),),
        ),
      ),
      body: Obx(() => controller.steps[controller.currentStep.value]),
      bottomNavigationBar: Container(
        height: 70,
        padding: EdgeInsets.all(10),
        child: Expanded(
            child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: colorSecondary,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
               controller.currentStep.value == 0 ?
                "Next" :
               "BOOK NOW"
                ,
                style: TextStyle(color: colorBackground, fontSize: 22),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.arrow_forward_outlined,
                color: colorBackground,
                size: 18,
              )
            ],
          ),
          onPressed: () {
            controller.currentStep.value == 0 ?
            controller.updateStep(1) :
             controller.bookService();
          },
        )),
      ),
    );
  }
}
