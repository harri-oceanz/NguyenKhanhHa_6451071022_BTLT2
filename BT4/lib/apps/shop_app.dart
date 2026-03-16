import 'package:demo_projectgrid/views/home_screen.dart';
import 'package:flutter/material.dart';

class ShopApp extends StatelessWidget{
  const ShopApp({super.key});

  @override
  Widget build( BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cửa hàng thể thao",
      home: const HomeScreen(),
    );
  }
}