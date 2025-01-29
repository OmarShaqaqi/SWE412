import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00D09E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Vector animation with explicit size
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Lottie.asset(
                'assets/vector_animation.json',
                fit: BoxFit.contain,
              ),
            ),

            SizedBox(height: 0), // Spacer between vector and FinWise animations, // Add spacing between animations

            // FinWise animation with explicit size
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Lottie.asset(
                'assets/FinWise.json',
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IntroPage(),
    debugShowCheckedModeBanner: false,
  ));
}
