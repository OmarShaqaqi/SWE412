import 'package:flutter/material.dart';
import '../widgets/custom_bottom_navigation_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
     final screenWidth = MediaQuery.of(context).size.width; 

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 208, 158), // Dark green background
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 208, 158),
        elevation: 0,
      ),
      body: Stack(
        children: [
          // Light Green Section
          Container(
            margin: const EdgeInsets.only(top: 100),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 241, 255, 243), // Light green
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 60), // Space for the profile image overlap
                // Name and ID Section
                const Text(
                  "Omar Shaqaqi",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "ID: 25030024",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 32),
                // Options Section
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.person, color: Colors.blue),
                        title: const Text("Edit Profile"),
                        onTap: () {
                          // Handle action
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.settings, color: Colors.blue),
                        title: const Text("Setting"),
                        onTap: () {
                          // Handle action
                        },
                      ),
                      ListTile(
                        leading:
                            const Icon(Icons.help_outline, color: Colors.blue),
                        title: const Text("Help"),
                        onTap: () {
                          // Handle action
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.logout, color: Colors.blue),
                        title: const Text("Logout"),
                        onTap: () {
                          // Handle action
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Profile Image
           Positioned(
            top: 36,
            left: (screenWidth / 2) - 50,
            child: const CircleAvatar(
              radius: 50, // Adjust size
              backgroundImage:  AssetImage('assets/anonymous_profile.png'),
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
