
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Models/MyService.dart';
import '../../../../Utils/Colors.dart';


class ServiceMainScreen extends StatefulWidget {
  ServiceMainScreen({Key? key}) : super(key: key);

  @override
  State<ServiceMainScreen> createState() => _ServiceMainScreenState();
}

class _ServiceMainScreenState extends State<ServiceMainScreen> {
  MyService? service;

  int yesOrNo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Get.width,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    // image: NetworkImage(service!.image!)
                    image: AssetImage("assets/images/get_started_background_one.jpg"),
                    fit: BoxFit.cover
                  )
                ),
              ),
              SizedBox(height: 10),
              // Text("About our ${service!.serviceType!}", style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 22),),
              Text("About our Home Cleaning Service", style: TextStyle(color: textColor, fontWeight: FontWeight.w500, fontSize: 22),),
              SizedBox(height: 10),
              // Text("About our ${service!.description!}", style: TextStyle(color: textColor, fontWeight: FontWeight.normal, fontSize: 20)),
              Text("About our ", style: TextStyle(color: textColor, fontWeight: FontWeight.normal, fontSize: 20,), maxLines: 3),
              SizedBox(height: 20),

              Text("How many cleaners do you need?", style: TextStyle(color: textColor, fontSize: 20),),
              Container(
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
                        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: colorSecondary)
                        ),
                        child: Text("${index+1}"),
                      );
                    }),
              ),

              SizedBox(height: 20),

              Text("How many hours should they stay", style: TextStyle(color: textColor, fontSize: 20),),
              Container(
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
                        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: colorSecondary)
                        ),
                        child: Text("${index+2}"),
                      );
                    }),
              ),

              SizedBox(height: 20),

              Text("Do you need cleaning materials?", style: TextStyle(color: textColor, fontSize: 20),),
              SizedBox(height: 10),
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
                      }, child: Text("No", style: TextStyle(color: colorBackground2, fontSize: 20),)),
                  SizedBox(width: 25),
                  TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: yesOrNo == 1 ? colorSecondary : colorPrimary,
                      ),
                      onPressed: (){
                        setState(() {
                          yesOrNo = 0;
                        });
                      }, child: Text("Yes", style: TextStyle(color: colorBackground2, fontSize: 20))),
                ],
              ),

              Text("Do you have any special instructions?", style: TextStyle(color: textColor, fontSize: 20),),
              Text("Optional", style: TextStyle(color: textColor.withOpacity(0.5), fontSize: 18),),
              SizedBox(height: 10),
              TextFormField(
                minLines: 2,
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: "Example: you will need to bring a gate pass, I will not be home and am leaving the key under the mat, etc.",
                  hintStyle: TextStyle(color: textColor.withOpacity(0.7), fontSize: 18),
                  labelStyle: TextStyle(color: textColor.withOpacity(0.7), fontSize: 18),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colorPrimary, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: colorPrimary, width: 1),
                  ),

                ),
              ),

              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
