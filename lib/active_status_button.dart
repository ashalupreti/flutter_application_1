import 'package:flutter/material.dart';

class ActiveStatusButton extends StatelessWidget {
  const ActiveStatusButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -10,
      right: -10,
      child: Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
