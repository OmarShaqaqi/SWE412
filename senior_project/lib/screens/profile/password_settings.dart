import 'package:flutter/material.dart';
import "../../widgets/custom_bottom_navigation_bar.dart";
import "../../widgets/password.dart";

class PasswordSettingsScreen extends StatelessWidget {
  const PasswordSettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 0, 208, 158), // Dark green background
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30),
        child: AppBar(
          title: const Text(
            "Password Settings",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 0, 208, 158),
          elevation: 0,
        ),
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
          child: Container(
            padding: const EdgeInsets.only(top: 16),
            height: screenHeight,
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      "Current Password",
                      textAlign: TextAlign.left,
                    ),
                    const Password(),
                    const SizedBox(height: 16),
                    const Text(
                      "New Password",
                      textAlign: TextAlign.left,
                    ),
                    const Password(),
                    const SizedBox(height: 16),
                    const Text(
                      "Confirm New Password",
                      textAlign: TextAlign.left,
                    ),
                    const Password(),
                    const SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print("Form is valid");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 208, 158),
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 80),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      child: const Text(
                        "Change Password",
                        style: TextStyle(
                          color: Color.fromARGB(255, 9, 48, 48),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),

      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
