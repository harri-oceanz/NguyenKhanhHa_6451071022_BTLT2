import 'package:flutter/material.dart';
import '../utils/dashboard_data.dart';
import '../widgets/dashboard_card.dart';

class DashboardView extends StatelessWidget {

  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,)),
        backgroundColor: Colors.teal,
        actions: [
          Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Center(
            child: Text(
              "6451071022",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
          ),
          ),
        ],
      ),

      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: dashboardItems.length,

        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.9,
        ),

        itemBuilder: (context, index){

          return DashboardCard(
            item: dashboardItems[index],
          );

        },
      ),
    );
  }
}