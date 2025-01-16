import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../widgets/password.dart';
import "./signup.dart";
import "./forgot_password.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 208, 158),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Login",
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
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Username or Email",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
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
                  const Text("Password"),
                  const Password(),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(height: 20),
                  Center(
                    // Center the button
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Handle form submission
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 0, 208, 158),
                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 80),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: Color.fromARGB(255, 9, 48, 48),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ForgotPasswordScreen(),
                              ),
                            );
                            
                          },
                          child: const Text(
                            "Forgot Password?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Don’t have an account?',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pop(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignupScreen(),
                                      ),
                                    );
                                  },
                                text: ' Sign Up',
                                style: const TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ],
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
