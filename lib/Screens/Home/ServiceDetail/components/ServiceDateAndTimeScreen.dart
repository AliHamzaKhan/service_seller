import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/Colors.dart';

class ServiceDateAndTimeScreen extends StatefulWidget {
  const ServiceDateAndTimeScreen({Key? key}) : super(key: key);

  @override
  State<ServiceDateAndTimeScreen> createState() => _ServiceDateAndTimeScreenState();
}

class _ServiceDateAndTimeScreenState extends State<ServiceDateAndTimeScreen> {
  var check = false;
  DateTime todayDate = DateTime.now();
  List<DateTime?>? getDate = [];
  int selectTime = 0;
  int amOrPm = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "When do you need the service?",
                    style: TextStyle(color: textColor, fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(getDate!.isEmpty ? "" : "${getDate![0]}",  style: TextStyle(color: colorPrimary, fontSize: 18),),
                      Icon(
                        Icons.calendar_month_outlined,
                        color: colorPrimary,
                      )
                    ],
                  ),
                  Divider(
                    color: colorPrimary,
                  )
                ],
              ),
              Container(
                height: 300,
                child: CalendarDatePicker2(

                  config: CalendarDatePicker2Config(
                    calendarType: CalendarDatePicker2Type.single,
                    firstDate: todayDate,
                    selectedDayHighlightColor: colorPrimary,
                    lastDate: todayDate.add(Duration(days: 60)),
                    weekdayLabelTextStyle: TextStyle(
                      color: colorSecondary,
                      fontWeight: FontWeight.bold,
                    ),
                    controlsTextStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    dayTextStyle: TextStyle(
                      color: colorPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                    disabledDayTextStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                  onValueChanged: (dates){
                    setState(() {
                      getDate = dates;
                    });
                  },
                  initialValue: [
                    todayDate
                  ],

                ),

              ),
              Text(
                "Please Select Time",
                style: TextStyle(color: textColor, fontSize: 18),
              ),
              SizedBox(height: 10),
              Container(
                height: 42,
                child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                    itemCount: 12,
                    itemBuilder: (context, index){
                  return Container(
                    width: 40,
                    height: 40,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selectTime == index ? colorSecondary : colorPrimary
                    ),
                    child: Text("${index+1}", style: TextStyle(color: selectTime == index ? colorPrimary : colorSecondary),),
                  );
                }),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: amOrPm == 0 ? colorSecondary : colorPrimary,
                      ),
                      onPressed: (){
                        setState(() {
                          amOrPm = 1;
                        });
                      }, child: Text("Am", style: TextStyle(color: colorBackground2, fontSize: 20),)),
                  SizedBox(width: 25),
                  TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: amOrPm == 1 ? colorSecondary : colorPrimary,
                      ),
                      onPressed: (){
                        setState(() {
                          amOrPm = 0;
                        });
                      }, child: Text("Pm", style: TextStyle(color: colorBackground2, fontSize: 20))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
