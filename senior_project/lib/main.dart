import 'package:flutter/material.dart';
import "../screens/signup.dart";
import "../screens/login.dart";
import "../screens/forgot_password.dart";
import "screens/profile/profile.dart";
import "screens/profile/profile_edit.dart";
import "screens/profile/profile_settings.dart";
import "./screens/forgot_password.dart";
import "screens/profile/delete_account.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Senior Project',
      home:  DeleteAccountScreen(),
    );
  }
}

