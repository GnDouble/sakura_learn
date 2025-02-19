import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

const Color pastellBlue = Color(0xFFA8DADC);
const welcome = TextStyle(
  color: Colors.black,
  fontSize: 28,
  fontWeight: FontWeight.bold,
);

class HomeScreen extends StatelessWidget {
  final PersistentTabController controller;  // Accepts the controller

  const HomeScreen({super.key, required this.controller});

  void _startWorkout(BuildContext context) {
    controller.jumpToTab(1); // Updates the bottom nav index before navigating
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pastellBlue,
      body: Align(
        alignment: const Alignment(0.0, -0.5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("こんにちは, Marvin!", style: welcome),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _startWorkout(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text(
                "Start Workout now!",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
