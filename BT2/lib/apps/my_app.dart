import 'package:flutter/material.dart';
import '../views/food_list_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài tập 2',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FoodListView(),
    );
  }
}