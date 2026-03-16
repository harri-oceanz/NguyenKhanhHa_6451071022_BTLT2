import 'package:flutter/material.dart';
import '../utils/article_data.dart';
import '../widgets/article_card.dart';

class NewsView extends StatelessWidget {

  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("News", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue,
        actions: [
          Padding(padding: const EdgeInsetsGeometry.all(10),
          child: Text("6451071022", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),))
        ],
      ),

      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(

            children: articles.map((article) {

              return ArticleCard(article: article);

            }).toList(),

          ),
        ),
      ),
    );
  }
}