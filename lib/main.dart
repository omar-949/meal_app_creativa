import 'package:creativa22/screens/meal_screen.dart';

import 'screens/home_screen.dart';
import 'package:flutter/material.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      routes: {
        "s2":(context)=>MealScreen()
      },
      home: HomeScreen(),
    );
  }
}
