import 'package:creativa22/data.dart';
import 'package:creativa22/model/meal.dart';
import 'package:creativa22/widgets/meal_item.dart';
import 'package:flutter/material.dart';
class MealScreen extends StatelessWidget {
  const MealScreen({super.key});

  @override
  Widget build(BuildContext context) {
   Map<String,dynamic> data = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic> ;
   String id = data["id"];
   String name = data["name"];
   List<Meal> mealFilter = meals.where((value){
     return value.categoryNumber == id ;
   }).toList() ;
    return  Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.teal,
        title: Text(name),
      ) ,
      body: ListView.builder(
        itemBuilder: (context,index){
          return MealItem(name: mealFilter[index].title, image: mealFilter[index].imageUrl, id: mealFilter[index].id);
        },
          itemCount: mealFilter.length,
      ),
    );
  }
}
