import 'package:flutter/material.dart';
import '../utils/user_data.dart';
import '../widgets/profile_avatar.dart';

class ProfileView extends StatelessWidget {

  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Profile",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),),
        backgroundColor: Colors.teal[900],
        centerTitle: true,
        leading: Icon(Icons.density_medium, color: Colors.white,),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle, color: Colors.white,),
            onPressed: () {
              print("Search");
            },
          ),
        ],
      ),

      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            SizedBox(
              width: 180,
              height: 180,
              child: ProfileAvatar(imageUrl: user.avatar),
            ),

            const SizedBox(height: 20),

            Text(
              user.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              user.email,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: Size(96, 48)
              ),
              child: const Text("Edit Profile",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18)),
            ),
            const SizedBox(height: 20),
            Text(
              "6451071022",
              style: const TextStyle(
                fontSize: 20,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}