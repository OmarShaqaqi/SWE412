import 'package:flutter/material.dart';

class Signup extends StatelessWidget {

  const Signup({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Account"),
      ),
      body:  Center(
        child: Form(
          child: Column(
            children: [
              const Text("Full Name"),
               TextFormField(),
              const Text("Email"),
               TextFormField(),
              const Text("Password"),
               TextFormField(),
              const Text("Confirm Password"),
               TextFormField(),
            ],
          ),
        ),
      ),
    );
  }
}
