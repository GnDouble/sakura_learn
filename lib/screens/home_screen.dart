import 'package:flutter/material.dart';

const Color pastellBlue = Color(0xFFA8DADC);
const welcome = TextStyle(
  color: Colors.black,
  fontSize: 24,
  fontWeight: FontWeight.bold,
);

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pastellBlue,
      body: Center(child:  Text("こんにちは, Marvin !", style: welcome,textAlign: TextAlign.start,)),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: pastellBlue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Practice',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: 'Progress',
          ),
        ],
      ),
    );
  }
}
