import 'package:flutter/material.dart';
import "../../widgets/custom_bottom_navigation_bar.dart";

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity, // Make the container take up 100% of the width
        height: 89, // Set the height of the container
        // color: const Color.fromRGBO(88, 204, 176, 1), // Light green background
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0), // Add horizontal padding
        decoration: const BoxDecoration(
          color: Color.fromRGBO(88, 204, 176, 1), // maybe delleted :(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(36.0),
            topRight: Radius.circular(36.0),
          ),
        ),
        child: Row(
          children: [
            Row(
              children: [
                Text(
                  "100",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "SAR",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 3178,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            Text(
              "some source",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
            Column(
              children: [
                Text(
                  "17:00",
                  style: const TextStyle(
                    color: Color.fromRGBO(0, 104, 255, 1),
                    fontSize: 27,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  "today",
                  style: const TextStyle(
                    color: Color.fromRGBO(0, 104, 255, 1),
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
