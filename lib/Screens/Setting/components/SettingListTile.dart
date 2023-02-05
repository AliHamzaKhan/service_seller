

import 'package:flutter/material.dart';

import '../../../Utils/Colors.dart';

class SettingListTile extends StatelessWidget {
  SettingListTile({this.mainIcon, required this.title, this.onTap});
  var mainIcon;
  String title;
  var onTap;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListTile(
        leading: Icon(mainIcon, color: colorDarkGrey,),
        title: Text(title, style: TextStyle(color: colorDarkGrey, fontSize: 18),),
        onTap: onTap,
        trailing: Icon(Icons.arrow_forward_ios, color: colorDarkGrey,),
      ),
    );
  }
}
