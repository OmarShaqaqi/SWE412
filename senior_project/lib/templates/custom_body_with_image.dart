import 'package:flutter/material.dart';

class CustomBodyWithImage extends StatelessWidget {
  final Widget content;
  final String image;

  const CustomBodyWithImage(
      {super.key, required this.content, required this.image});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        // Light Green Section
        Container(
          margin: const EdgeInsets.only(top: 100),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 241, 255, 243), // Light green
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: content,
        ),
        // Profile Image
        Positioned(
          top: 36,
          left: (screenWidth / 2) - 50,
          child: CircleAvatar(
            radius: 50, // Adjust size
            backgroundImage: AssetImage(image),
            backgroundColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
