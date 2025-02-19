import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:sakura_learn/screens/practice_screen.dart';
import 'package:sakura_learn/screens/progress_screen.dart';
import '../screens/home_screen.dart'; // ✅ Import your current HomeScreen

class BottomNavBar extends StatefulWidget {

  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarItems(),
      backgroundColor: pastellBlue,
      navBarStyle: NavBarStyle.style10, // ✅ Floating style 10
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomeScreen(controller: PersistentTabController(),), // ✅ Your existing HomeScreen
      PracticeScreen(),
      ProgressScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.home, color: Colors.black),  // ✅ Styled properly
      title: "Home",
      activeColorPrimary: Colors.black,  // Active state
      inactiveColorPrimary: Colors.grey, // Inactive state
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.fitness_center, color: Colors.black),
      title: "Practice",
      activeColorPrimary: Colors.black,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.leaderboard, color: Colors.black),
      title: "Progress",
      activeColorPrimary: Colors.black,
      inactiveColorPrimary: Colors.grey,
    ),
  ];
}

}
