

import 'package:flutter/material.dart';

import '../../Utils/Colors.dart';
import 'HistoryJobScreen.dart';
import 'PendingJobScreen.dart';

class JobScreen extends StatelessWidget {
  const JobScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("My Services", style: TextStyle(color: colorBlack, fontSize: 20),),
      ),
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar:  TabBar(
            indicatorColor: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 20),
            tabs: [
              Tab(child: Text("Pending", style: TextStyle(color: colorSecondary, fontSize: 20)),),
              Tab(child: Text("History", style: TextStyle(color: colorSecondary, fontSize: 20),)),
            ],
          ),
          body: TabBarView(children: [
            PendingJobScreen(),
            HistoryJobScreen()
          ]),
        ),
      ),
    );
  }
}
