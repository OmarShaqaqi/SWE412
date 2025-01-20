import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text(name),
    );
  }
}
