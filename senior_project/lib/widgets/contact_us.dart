import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 0, 208, 158), // Green background
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            padding: const EdgeInsets.all(8), // Adjust padding as needed
            child: const Icon(
              Icons.language,
              color: Colors.black, // Icon color
            ),
          ),
          title: const Text("Website"),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            // Navigate to website
          },
        ),
       ListTile(
          leading: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 0, 208, 158), // Green background
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            padding: const EdgeInsets.all(8), // Adjust padding as needed
            child: const Icon(
              Icons.facebook,
              color: Colors.black, // Icon color
            ),
          ),
          title: const Text("Facebook"),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            // Navigate to website
          },
        ),
        ListTile(
          leading: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 0, 208, 158), // Green background
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            padding: const EdgeInsets.all(8), // Adjust padding as needed
            child: const Icon(
              Icons.messenger,
              color: Colors.black, // Icon color
            ),
          ),
          title: const Text("Whatsapp"),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            // Navigate to website
          },
        ),
        ListTile(
          leading: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 0, 208, 158), // Green background
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            padding: const EdgeInsets.all(8), // Adjust padding as needed
            child: const Icon(
              Icons.camera_alt,
              color: Colors.black, // Icon color
            ),
          ),
          title: const Text("Instagram"),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            // Navigate to website
          },
        ),
      ],
    );
  }
}
