import 'package:flutter/material.dart';
import '../utils/gallery_data.dart';
import '../widgets/gallery_card.dart';

class GalleryView extends StatelessWidget {

  const GalleryView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Gallery Ảnh"),
        actions: [
          Padding(padding: const EdgeInsetsGeometry.all(10),
          child: Text("6451071022", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 20),))
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),

        child: GridView.builder(

          itemCount: images.length,

          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),

          itemBuilder: (context, index) {

            return GalleryCard(
              image: images[index],
            );

          },
        ),
      ),
    );
  }
}