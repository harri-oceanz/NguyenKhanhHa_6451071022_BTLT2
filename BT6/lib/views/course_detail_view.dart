import 'package:flutter/material.dart';
import '../utils/course_data.dart';
import '../widgets/course_image.dart';

class CourseDetailView extends StatelessWidget {

  const CourseDetailView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Course Detail"),
        backgroundColor: Colors.white,
        elevation: 8,
        shadowColor: Colors.black,
        actions: [
          Padding(padding: const EdgeInsets.all(10),
          child:
              Text("6451071022", style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),)
          ),
        ],
      ),

      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              CourseImage(imageUrl: course.image),

              const SizedBox(height: 16),

              Text(
                course.title,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              Row(
                children: [

                  const Icon(Icons.person, size: 24, fontWeight: FontWeight.bold,),

                  const SizedBox(width: 6),

                  Text(
                    "Instructor: ${course.instructor}",
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              Text(
                course.description,
                style: const TextStyle(fontSize: 18),
              ),

              const SizedBox(height: 24),

              Center(
                child: ElevatedButton(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 12,
                    ),
                    backgroundColor: Colors.blue,
                  ),

                  child: const Text("Enroll Now", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}