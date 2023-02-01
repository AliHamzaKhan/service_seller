

import 'package:flutter/material.dart';
import 'package:service_seller/Screens/Home/Catogery/CategoryCardDesign.dart';

class CategoryGridList extends StatelessWidget {
  const CategoryGridList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20
        ),
        itemBuilder: (context, index){
          return CategoryCardDesign();
    });
  }
}
