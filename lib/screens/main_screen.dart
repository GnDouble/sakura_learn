import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:sakura_learn/screens/home_screen.dart';
import 'package:sakura_learn/screens/practice_screen.dart';
import 'package:sakura_learn/screens/progress_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PersistentTabController _controller = PersistentTabController(
    initialIndex: 0,
  );

  List<Widget> _buildScreens() {
    return [
      HomeScreen(controller: _controller), // Pass the controller
      const PracticeScreen(),
      const ProgressScreen(), // Placeholder for third tab
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    const Color activeColor = Color.fromARGB(255, 126, 163, 165);
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home, color: Colors.black),
        title: ("Home"),
        activeColorPrimary: activeColor,
        inactiveColorPrimary: Colors.grey,
        activeColorSecondary: Colors.black
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.fitness_center, color: Colors.black),
        title: ("Practice"),
        activeColorPrimary: activeColor,
        inactiveColorPrimary: Colors.grey,
        activeColorSecondary: Colors.black
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.leaderboard, color: Colors.black),
        title: "Progress",
        activeColorPrimary: activeColor,
        inactiveColorPrimary: Colors.grey,
        activeColorSecondary: Colors.black
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      backgroundColor: pastellBlue,
      navBarStyle: NavBarStyle.style10,
      decoration: NavBarDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black, // Divider color
            width: 0.1, // Thickness of the divider
          ),
        ),
      ),
    );
  }
}
