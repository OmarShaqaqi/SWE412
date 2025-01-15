import 'package:flutter/material.dart';
import "../widgets/password.dart";

class Signup extends StatelessWidget {
  const Signup({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        0,
        208,
        158,
      ),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Create Account",
            style: TextStyle(
              color: Color.fromARGB(255, 9, 48, 48),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 208, 158),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          top: 32,
        ),
        padding: const EdgeInsets.only(
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
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Full Name",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "your name",
                      filled: true,
                      fillColor: Color.fromARGB(255, 223, 247, 226),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(18.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Email"),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "example@example.com",
                      filled: true,
                      fillColor: Color.fromARGB(255, 223, 247, 226),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(18.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Mobile Number"),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "+ 966 50 456 7890",
                      filled: true,
                      fillColor: Color.fromARGB(255, 223, 247, 226),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(18.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Date of Birth"),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "DD / MM / YYY",
                      filled: true,
                      fillColor: Color.fromARGB(255, 223, 247, 226),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(18.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Password"),
                  const Password(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Confirm Password"),
                  const Password(),
                  const SizedBox(height: 20),
                  const Text(
                    textAlign: TextAlign.center,
                    "By continuing, you agree to Terms of Use and Privacy Policy.",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    // Center the button
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle form submission
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 208, 158),
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 32),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color.fromARGB(255, 9, 48, 48),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
