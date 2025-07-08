import 'package:creativa22/data.dart';
import 'package:creativa22/widgets/category_item.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Meal App"),
      ),
      body:  ListView.builder(
        itemBuilder: (BuildContext context,int i){
        return CategoryItem(category:categories[i] ,) ;
      },
        itemCount: categories.length,)
    );
  }
}
