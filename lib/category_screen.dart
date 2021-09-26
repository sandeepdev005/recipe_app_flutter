import 'package:flutter/material.dart';
import 'dummy_data.dart';
import 'category_item.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SandeepMeal"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(15),
        children: DUMMY_CATEGORIES
            .map((categoryData) => CategoryItem(
                  id: categoryData.id,
                  title: categoryData.title,
                  color: categoryData.color,
                ))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          // if the device has 500px then two views can show in a screen horizontal
          childAspectRatio: 3 / 2,
          // for 200 width , 300 height
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
