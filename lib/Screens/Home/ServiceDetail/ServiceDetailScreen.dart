import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Utils/Colors.dart';
import '../../../Utils/ThemeHelper.dart';

class ServiceDetailScreen extends StatelessWidget {
  ServiceDetailScreen({Key? key}) : super(key: key);

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
      ),
      bottomNavigationBar: Container(
        height: 70,
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 70,
                  child:DropdownButton<String>(
                    hint: Text("25\$" ,style: TextStyle(color: Colors.indigo, fontSize: 22)),
                    elevation: 0,
                    dropdownColor: colorBackground,
                    alignment: Alignment.center,
                    underline: SizedBox(),
                    icon: Icon(Icons.arrow_drop_up, color:  Colors.indigo,),
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value, style: TextStyle(color: Colors.indigo, fontSize: 22),),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  )
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
              onPressed: () {},
            ),
                ))
          ],
        ),
      ),
    );
  }
}
