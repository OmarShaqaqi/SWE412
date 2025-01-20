import 'package:flutter/material.dart';

class CustomBodyGroup extends StatelessWidget {
  final Widget upperContent;
  final Widget lowerContent;

  const CustomBodyGroup(
      {super.key, required this.upperContent, required this.lowerContent});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color.fromARGB(255, 0, 208, 158),
          child: upperContent,
        ),
        // Group cards
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 241, 255, 243), // Light green
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: lowerContent,
          ),
        ),
      ],
    );
  }
}
