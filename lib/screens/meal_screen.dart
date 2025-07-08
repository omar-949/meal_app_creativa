import 'package:flutter/material.dart';
class MealScreen extends StatelessWidget {
  const MealScreen({super.key});

  @override
  Widget build(BuildContext context) {
   Map<String,dynamic> data = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic> ;

    return  Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.teal,
        title: Text(data["id"]),
      ) ,
    );
  }
}
