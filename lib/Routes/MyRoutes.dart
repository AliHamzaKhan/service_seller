

import 'package:get/get.dart';
import 'package:service_seller/Binding/HomeBinding.dart';

import '../Screens/Dashboard/DashboardScreen.dart';
import '../Screens/Home/HomeScreen.dart';
import '../Screens/Registry/ForgotPasswordScreen.dart';
import '../Screens/Registry/LogInScreen.dart';
import '../Screens/Registry/RegisterUserScreen.dart';
import '../Screens/Registry/VerificationScreen.dart';

class MyRoutes{
  static var getPages = [
    GetPage(name: '/home', page: () => HomeScreen(), binding: HomeBinding()),
    GetPage(name: '/register', page: () => RegisterUserScreen()),
    GetPage(name: '/login', page: () => LogInScreen()),
    GetPage(name: '/verification', page: () => VerificationScreen()),
    GetPage(name: '/forgot_password', page: () => ForgotPasswordScreen()),
    GetPage(name: '/dashboard', page: () => DashboardScreen()),
  ];
}