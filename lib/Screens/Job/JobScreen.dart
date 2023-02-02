

import 'package:flutter/material.dart';

import '../../Utils/Colors.dart';

class JobScreen extends StatelessWidget {
  const JobScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Services", style: TextStyle(color: colorBlack, fontSize: 20),),
      ),

    );
  }
}
