


import 'package:flutter/material.dart';
import '../../../../Utils/Colors.dart';

class StepOneScreen extends StatefulWidget {
  const StepOneScreen({Key? key}) : super(key: key);

  @override
  State<StepOneScreen> createState() => _StepOneScreenState();
}

class _StepOneScreenState extends State<StepOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter Detail Information",
                style: TextStyle(color: textColor, fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorBackground2.withOpacity(0.1)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date and Time",
                      style: TextStyle(color: colorPrimary, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    OutlinedButton(
                        onPressed: () async{
                         await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime(2025));
                        }, child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                      children: [
                          Icon(Icons.calendar_today_outlined, color: textColor, size: 20,),
                          SizedBox(width: 10),
                          Text("Date and time", style: TextStyle(color: colorPrimary.withOpacity(0.7), fontSize: 20),)
                      ],
                    ),
                        )),
                    SizedBox(height: 15),
                    Text(
                      "Your Address",
                      style: TextStyle(color: colorPrimary, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    OutlinedButton(onPressed: (){}, child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined, color: textColor, size: 20,),
                          SizedBox(width: 10),
                          Text("karachi pakistan", style: TextStyle(color: colorPrimary.withOpacity(0.7), fontSize: 20),)
                        ],
                      ),
                    )),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){}, child: Text("Choose from map", style: TextStyle(color: colorSecondary, fontWeight: FontWeight.bold),)),
                        TextButton(onPressed: (){}, child: Text("User current Location",style: TextStyle(color: colorSecondary,fontWeight: FontWeight.bold))),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Description",
                      style: TextStyle(color: colorPrimary, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      minLines: 3,
                      maxLines: 5,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        hintText: "Example: you will need to bring a gate pass, I will not be home and am leaving the key under the mat, etc.",
                        hintStyle: TextStyle(color: colorPrimary.withOpacity(0.7), fontSize: 18),
                        labelStyle: TextStyle(color: colorPrimary.withOpacity(0.7), fontSize: 18),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: colorDarkGrey, width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: colorDarkGrey, width: 1),
                        ),

                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
