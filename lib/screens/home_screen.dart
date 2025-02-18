import 'package:flutter/material.dart';
import "/widgets/bottom_nav_bar.dart";

const Color pastellBlue = Color(0xFFA8DADC);
const welcome = TextStyle(
  color: Colors.black,
  fontSize: 28,
  fontWeight: FontWeight.bold,
);

class HomeScreen extends StatelessWidget {
  void _startWorkout() {
    print("Button pressed");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pastellBlue,
      body: Align(
        alignment: Alignment(0.0, -0.5), // Moves content between top and center
        child: Column(
          mainAxisSize:
              MainAxisSize.min, // Keeps column from taking full height
          children: [
            Text("こんにちは, Marvin!", style: welcome),
            SizedBox(height: 20), // Space between text and button
            ElevatedButton(
              onPressed: _startWorkout,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Button background color
              ),
              child: Text(
                "Start Workout now!",
                style: TextStyle(color: Colors.white), // Text color
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavBar(
        backgroundColor: pastellBlue,
      ), // import out /widgets/bottom_nav_bar.dart
    );
  }
}
