
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Controllers/ServiceDetailController.dart';
import '../../../Utils/Colors.dart';
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
        bottom:  PreferredSize(child: Obx(() => Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i= 0; i<controller.steps.length; i++)
                Icon(
                  i == controller.currentStep.value ? Icons.circle : Icons.circle_outlined,
                  // Icons.circle ,
                  color: i == controller.currentStep.value ? colorSecondary : colorPrimary.withOpacity(0.7),
                  size: i == controller.currentStep.value ? 24.0 : 18.0,
                )
            ],
          ),
        )), preferredSize: Size.fromHeight(30)),
      ),
      body: Obx(() => controller.steps[controller.currentStep.value]),
      bottomNavigationBar: Container(
        height: 70,
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
                child: SizedBox(
                  height: 70,
                  child: TextButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "25",
                          style: TextStyle(color: colorSecondary, fontSize: 22),
                        ),
                        Text(
                          "\$",
                          style: TextStyle(color: colorSecondary, fontSize: 22),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.arrow_drop_up_rounded,
                          color: colorSecondary,
                          size: 18,
                        )
                      ],
                    ),
                    onPressed: () {
                      controller.stepStateBack();
                    },
                  ),
                )),
            Expanded(
                child: SizedBox(
              height: 70,
              child: TextButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.indigo),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Next",
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
                  controller.stepState();
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
