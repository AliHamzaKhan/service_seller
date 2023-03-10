import 'package:flutter/material.dart';
import 'package:service_seller/Utils/Colors.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: colorPrimary,
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      textTheme: TextTheme(
        headline2: TextStyle(color: colorTitle),
      ),
    ),
  );
  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: colorPrimary,
    appBarTheme: AppBarTheme(
      brightness: Brightness.dark,
      textTheme: TextTheme(
        headline2: TextStyle(color: colorBackground2),
      ),
    ),
  );
}