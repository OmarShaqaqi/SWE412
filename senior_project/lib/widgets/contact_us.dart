import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget{
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {

      return ListView(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.language),
                        title: const Text("Website"),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () {
                          // Navigate to website
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.facebook),
                        title: const Text("Facebook"),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () {
                          // Navigate to Facebook
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.messenger),
                        title: const Text("WhatsApp"),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () {
                          // Navigate to WhatsApp
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.camera_alt),
                        title: const Text("Instagram"),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () {
                          // Navigate to Instagram
                        },
                      ),
                    ],
                  );
  }
}