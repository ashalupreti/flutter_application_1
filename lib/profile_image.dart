import 'package:flutter/material.dart';
import 'active_status_button.dart';

class ProfileImage extends StatelessWidget {
  final double circleImageTop;
  final double circleImageRight;
  final double circleImageBottom;
  final double circleImageLeft;

  const ProfileImage({
    super.key,
    this.circleImageTop = 100,
    this.circleImageRight = 10,
    this.circleImageBottom = 0,
    this.circleImageLeft = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Main Profile Image with border
        Container(
          width: 210,
          height: 210,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(65),
            border: Border.all(
              color: Colors.white,
              width: 5.0,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(60),
            child: Image.network(
              'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Small Circular Image with active status button, positioned according to parameters
        Positioned(
          top: circleImageTop,
          right: circleImageRight,
          bottom: circleImageBottom,
          left: circleImageLeft,
          child: const Stack(
            clipBehavior: Clip.none,
            children: [
              CircleImage(),
              ActiveStatusButton(),
            ],
          ),
        ),
      ],
    );
  }
}

class CircleImage extends StatelessWidget {
  const CircleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.black,
          width: 5.0,
        ),
      ),
      child: ClipOval(
        child: Image.network(
          'https://images.unsplash.com/photo-1437750769465-301382cdf094?q=80&w=1776&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
