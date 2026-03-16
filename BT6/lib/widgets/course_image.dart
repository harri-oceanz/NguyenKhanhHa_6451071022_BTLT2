import 'package:flutter/material.dart';

class CourseImage extends StatelessWidget {

  final String imageUrl;

  const CourseImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        imageUrl,
        width: double.infinity,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}