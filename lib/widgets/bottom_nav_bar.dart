import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final Color backgroundColor;

  const BottomNavBar({super.key, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: backgroundColor,
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
    );
  }
}
