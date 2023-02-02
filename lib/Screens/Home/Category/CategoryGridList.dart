

import 'package:flutter/material.dart';
import 'package:service_seller/Screens/Home/Category/CategoryCardDesign.dart';

import '../../../Models/Category.dart';

class CategoryGridList extends StatelessWidget {
  CategoryGridList({Key? key, required this.categoriesList}) : super(key: key);
  List<Category> categoriesList;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: categoriesList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: 2
        ),
        itemBuilder: (context, index){
          return CategoryCardDesign(category: categoriesList[index],);
    });
  }
}
