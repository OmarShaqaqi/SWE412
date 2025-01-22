import 'package:flutter/material.dart';

class ParticipantRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding:const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              const SizedBox(width: 10),
              // Participant Name
             const Text(
                "Participant",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),],
          ),
          const Text(
            "\$${15}",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
