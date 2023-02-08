import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Utils/Colors.dart';

class StepTwoScreen extends StatelessWidget {
  const StepTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: colorBackground2.withOpacity(0.5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      width: Get.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        image: DecorationImage(
                            image: AssetImage("assets/images/get_started_background_one.jpg"),
                          fit: BoxFit.cover
                        ),
                      )
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Spa Mist Hair Treatment Nourishes",
                      style: TextStyle(
                          color: textColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 100,
                      decoration: BoxDecoration(color: colorBackground),
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_drop_down_rounded, color: textColor, size: 18,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Text("1"),
                          ),
                          Icon(Icons.arrow_drop_up_rounded, color: textColor, size: 18,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text("Price Detail", style: TextStyle(
                  color: textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: colorBackground2.withOpacity(0.5)),
                child: Column(
                  children: [
                    createRow("Price","120.00"),
                    createRow("Subtotal","120.00 * 1 = 12.00"),
                    createRowWithButton("couple", "Apply Coupon", (){}),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Amount", style: TextStyle(color: textColor.withOpacity(0.5)),),
                          Text("\$12.00", style: TextStyle(color: colorPrimary))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  createRow(key, value){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(key, style: TextStyle(color: textColor.withOpacity(0.5)),),
          Text("\$${value}", style: TextStyle(color: textColor))
        ],
      ),
    );
  }
  createRowWithButton(key, value, click){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(key, style: TextStyle(color: textColor.withOpacity(0.5)),),
          TextButton(onPressed: click, child: Text(value, style: TextStyle(color: colorPrimary),))
        ],
      ),
    );
  }
}
