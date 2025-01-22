import 'package:flutter/material.dart';

class ExpenseRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Icon and Participant Info
          // Circular Icon
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Icon(
              Icons.layers,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(width: 10),
          // Participant Info
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Participant",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Approved",
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),
          // Category and Amount
          Container(
            height: 30,
            width: 1,
            color: Colors.green,
          ),
          const SizedBox(width: 10),
          const Text(
            "Food",
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 30,
            width: 1,
            color: Colors.green,
          ),
          const SizedBox(width: 10),
          const Text(
            "\$${15}",
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
