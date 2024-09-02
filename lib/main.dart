import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 225, 41, 41),
        body: Center(
          child: SizedBox(
            width: 250, // Set the width of the stack area
            height: 300, // Increased height to accommodate the profile info
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Container with border around the main rectangular image
                Container(
                  width: 210, // Width including the border
                  height: 210, // Height including the border
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(65),
                    border: Border.all(
                      color: Colors.white, // Border color
                      width: 5.0, // Border thickness
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
                // Positioned circular image with a black border
                Positioned(
                  bottom: 0, // Adjust to overlap the main image
                  right: 0, // Adjust to overlap the main image
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
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
                      ),
                      // Green active button positioned below and to the right of the rounded image
                      Positioned(
                        bottom: -10, // Move the button slightly below the rounded image
                        right: -10, // Move the button slightly to the right of the rounded image
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
                      ),
                    ],
                  ),
                ),
                // Profile Info positioned below the center of the main image
                Positioned(
                  bottom: 10, // Position it further down from the bottom of the main image
                  child: Row(
                    mainAxisSize: MainAxisSize.min, // Adjusts the width to fit content
                    children: [
                      // Profile Image
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10), // Space between image and name
                      // Profile Name in a single line
                      const Text(
                        'Ashal Upreti',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
