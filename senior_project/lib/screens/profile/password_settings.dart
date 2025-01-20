import 'package:flutter/material.dart';
import "package:senior_project/templates/custom_scaffold.dart";
import "../../templates/custom_bottom_navigation_bar.dart";
import "../../widgets/password.dart";
import "../../templates/custom_body.dart";

class PasswordSettingsScreen extends StatelessWidget {
  const PasswordSettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final screenHeight = MediaQuery.of(context).size.height;
    final content = Column(
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
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 80),
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
    );

    return CustomScaffold(
      title: "Password Settings",
      content: CustomBody(
        content: content,
      ),
    );
  }
}
