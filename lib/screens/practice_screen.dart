import 'package:flutter/material.dart';
import 'package:sakura_learn/screens/home_screen.dart';

class PracticeScreen extends StatelessWidget{
  const PracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pastellBlue,
      body: Center(
        child: Text("Practice Screen"),
      ),
    );
  }
}