import 'package:flutter/material.dart';
import 'profile_image.dart';
import 'profile_info.dart';

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
      child: Stack(
        alignment: Alignment.center,
        children: [
          ProfileImage(),
          Positioned(
            bottom: 10,
            child: ProfileInfo(),
          ),
        ],
      ),
    );
  }
}
