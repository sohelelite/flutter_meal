import 'package:flutter/material.dart';
import 'package:meals/category_item.dart';
import 'package:meals/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeal'),
      ),
      body: GridView(
        children: DUMMY_CATEGORIES.map((catData) => CategoryItem(catData.title, catData.color)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisExtent: 20,
        ),
      ),
    );
  }
}