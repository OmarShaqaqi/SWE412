import 'package:flutter/material.dart';
import "../../widgets/custom_bottom_navigation_bar.dart";

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width:
                double.infinity, // Make the container take up 100% of the width
            height: 89, // Set the height of the container
            // color: const Color.fromRGBO(88, 204, 176, 1), // Light green background
            padding: const EdgeInsets.only(
              left: 20.0, // Add left padding
              right: 20.0, // Add right padding
              bottom: 10.0, // Add bottom padding
              top: 5, // Add top padding
            ),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(88, 204, 176, 1), // maybe delleted :(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(36.0),
                topRight: Radius.circular(36.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ThepriceUI(),
                Container(
                  width: 99,
                  height: double.infinity,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "some source",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "17:00",
                      style: const TextStyle(
                        color: Color.fromRGBO(0, 104, 255, 1),
                        fontSize: 27,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "today",
                      style: const TextStyle(
                        color: Color.fromRGBO(0, 104, 255, 1),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            )),
        SizedBox(
          width: double.infinity,
          height: 10,
        )
      ],
    );
  }

  Container ThepriceUI() {
    return Container(
      height: double.infinity,
      // decoration: const BoxDecoration(
      //   color: Color.fromRGBO(0, 104, 255, 1),
      // ),
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 45,
                child: Text(
                  "0",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "SAR",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
