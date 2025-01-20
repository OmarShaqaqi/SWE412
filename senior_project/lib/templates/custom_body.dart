import 'package:flutter/material.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({super.key, required this.content});

  final Widget content;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(children: [
      Expanded(
        child: SingleChildScrollView(
          child: Container(
            height: screenHeight,
            margin: const EdgeInsets.only(top: 16),
            padding: const EdgeInsets.only(
                top: 32,
                left: 16,
                right: 16,
                bottom: kBottomNavigationBarHeight),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 241, 255, 243), // Light green
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: content,
          ),
        ),
      )
    ]);
    
  }
}
