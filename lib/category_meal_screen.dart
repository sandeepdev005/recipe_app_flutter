import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;
  //
  // const CategoryMealScreen({
  //   required this.categoryId,
  //   required this.categoryTitle,
  // });

  @override
  Widget build(BuildContext context) {

    //kind of like intent args data
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map<String,String>;
    final categoryTitle = routeArgs['title'];
    final categoryId  = routeArgs['id'];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: Center(
        child: Text("Meal Item"),
      ),
    );
  }
}
