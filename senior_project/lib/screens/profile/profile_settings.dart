import 'package:flutter/material.dart';
import "package:senior_project/screens/profile/password_settings.dart";
import "../../widgets/custom_bottom_navigation_bar.dart";
import  "../forgot_password.dart";

class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 0, 208, 158), // Dark green background
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 208, 158),
        elevation: 0,
      ),
      extendBody: true,
      body: Container(
        margin: const EdgeInsets.only(top: 100),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 241, 255, 243), // Light green
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: ListView(
          children: [
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 0, 208, 158),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.key,
                  color: Colors.white,
                ),
              ),
              title: const Text(
                "Password Settings",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 16,
              ),
              onTap: () {
                // Navigate to Password Settings screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PasswordSettingsScreen()),
                );
              },
            ),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 0, 208, 158),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              title: const Text(
                "Delete Account",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 16,
              ),
              onTap: () {
                // Navigate to Password Settings screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Text("latter")),
                );
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
