import 'package:flutter/material.dart';
import "package:senior_project/templates/custom_body_with_image.dart";
import "package:senior_project/templates/custom_scaffold.dart";
import '../../templates/custom_bottom_navigation_bar.dart';
import "../../widgets/dialog_utils.dart";
import "./profile_edit.dart";
import "./profile_settings.dart";
import "./profile_help.dart";

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
     final screenWidth = MediaQuery.of(context).size.width; 
     final String image = 'assets/anonymous_profile.png';
     final content = Column(
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const ProfileEditScreen()));
                          // Handle action
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.settings, color: Colors.blue),
                        title: const Text("Setting"),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const ProfileSettingsScreen()));
                          // Handle action
                        },
                      ),
                      ListTile(
                        leading:
                            const Icon(Icons.help_outline, color: Colors.blue),
                        title: const Text("Help"),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const ProfileHelpScreen()));
                          // Handle action
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.logout, color: Colors.blue),
                        title: const Text("Logout"),
                        onTap: () {
                          showLogoutDialog(context);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            );

            return CustomScaffold(title: "Profile", content: CustomBodyWithImage(content: content, image: image,),);
  }
}
