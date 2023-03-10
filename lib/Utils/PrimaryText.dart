

import 'package:flutter/material.dart';
import 'package:service_seller/Utils/Colors.dart';

class PrimaryText extends StatelessWidget {
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final String text;
  final double height;

  const PrimaryText({
    required this.text,
    this.fontWeight= FontWeight.w400,
    this.color =const Color(0xff262626),
    this.size= 20,
    this.height= 1.3,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        color: color,
        height: height,
        fontFamily: 'Poppins',
        fontSize: size,
        fontWeight: fontWeight,
      ),);
  }
}