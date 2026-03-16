import 'package:flutter/material.dart';
import '../models/gallery_image.dart';

class GalleryCard extends StatelessWidget {

  final GalleryImage image;

  const GalleryCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {

    return ClipRRect(
      borderRadius: BorderRadius.circular(12),

      child: Image.network(
        image.url,
        fit: BoxFit.cover,
      ),
    );
  }
}