import 'package:flutter/material.dart';
import 'profile_image.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 225, 41, 41),
        body: Center(
          child: ProfileStack(),
        ),
      ),
    ),
  );
}

class ProfileStack extends StatelessWidget {
  const ProfileStack({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      height: 300,
      child: ProfileImage(
        circleImageTop: 150, // Adjust these values as needed
        circleImageRight: 20,
        circleImageBottom: 0,
        circleImageLeft: 0,
      ),
    );
  }
}
