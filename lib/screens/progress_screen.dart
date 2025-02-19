import 'package:flutter/material.dart';
import 'package:sakura_learn/screens/home_screen.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pastellBlue,
      body: Center(
        child: Text("Progress Screen"),
      ),
    );
  }
}