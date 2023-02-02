import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Constant/MainAccess.dart';
import 'Controllers/AuthController.dart';
import 'Routes/MyRoutes.dart';
import 'Screens/Home/HomeScreen.dart';
import 'Screens/Main/MainScreen.dart';
import 'Screens/Registry/LogInScreen.dart';
import 'Screens/Registry/RegisterUserScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await firebaseInitialization.then((value) {
  //   Get.put(AuthController());
  // });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      defaultTransition: Transition.fadeIn,
      theme: ThemeData(
        primaryColor:  HexColor('#DC54FE'),
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      getPages:  MyRoutes.getPages,
      home: MainScreen(),
    );
  }
}

