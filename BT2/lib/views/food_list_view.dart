import 'package:flutter/material.dart';
import '../utils/mock_data.dart';
import '../widget/food_card.dart';

class FoodListView extends StatelessWidget {
  const FoodListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Màu nền hơi xám cho nổi bật Card
      appBar: AppBar(
        backgroundColor: Colors.blue[800], // Màu xanh như đề bài
        title: const Text('DANH SÁCH MÓN ĂN', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Danh sách món ăn
          Expanded(
            child: ListView.builder(
              itemCount: foodList.length,
              itemBuilder: (context, index) {
                return FoodCard(food: foodList[index]);
              },
            ),
          ),
          
         
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            color: Colors.white,
            child: const Text(
              '6451071022',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}