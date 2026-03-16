import 'package:demo_projectgrid/widget/product_card.dart';
import 'package:flutter/material.dart';
import '../utils/product_data.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Cửa Hàng Thể Thao",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "MSSV: 22123456",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.arrow_back,
        color: Colors.white,),
        actions: const[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.search, color: Colors.white),
          )
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,

        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.75,
        ),

        itemBuilder: (context, index){
          return ProductCard(product: products[index]);
        },
      )
    );
  }
}