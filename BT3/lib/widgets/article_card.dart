import 'package:flutter/material.dart';
import '../models/article.dart';

class ArticleCard extends StatelessWidget {

  final Article article;

  const ArticleCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 16),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(12),
            ),

            child: Image.network(
              article.image,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  article.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  article.description,
                  style: const TextStyle(fontSize: 14),
                ),

              ],
            ),
          )

        ],
      ),
    );
  }
}