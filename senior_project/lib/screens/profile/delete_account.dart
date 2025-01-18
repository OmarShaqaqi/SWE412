import 'package:flutter/material.dart';
import "../../widgets/custom_bottom_navigation_bar.dart";
import "../../widgets/bullet_list.dart";
import "../../widgets/password.dart";
import "../../widgets/dialog_utils.dart";

class DeleteAccountScreen extends StatefulWidget {
  const DeleteAccountScreen({super.key});

  @override
  State<DeleteAccountScreen> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccountScreen> {
  
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 208, 158),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(30),
        child: AppBar(
          title: const Text(
              "Delete Account",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 0, 208, 158),
        ),
      ),
      extendBody: true,
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          margin: const EdgeInsets.only(
            top: 32,
          ),
          padding: const EdgeInsets.only(
            top: 32,
            left: 32,
            right: 32,
          ),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 241, 255, 243),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Center(
            child: Column(
              children: [
                const Text(
                  "Are you sure you want to delete your account?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 247, 226),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  margin: const EdgeInsets.only(
                    top: 16,
                  ),
                  child: const Column(
                    children: [
                      Text(
                        "This action will permanently delete all of your data, and you will not be able to recover it. "
                        "Please keep the following in mind before proceeding: ",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      BulletList(
                        strings: [
                          "All your expenses, income and associated transactions will be eliminated.",
                          "You will not be able to access your account or any related information.",
                          " This action cannot be undone."
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Please enter your password to confirm the deletion of your account.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const Password(),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    deleteDialog(context);
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
                    "Yes, delete my account",
                    style: TextStyle(
                      color: Color.fromARGB(255, 9, 48, 48),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 223, 247, 226),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  child: const Text(
                    "cancel",
                    style: TextStyle(
                      color: Color.fromARGB(255, 9, 48, 48),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
