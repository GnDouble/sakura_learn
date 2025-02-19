import 'package:flutter/material.dart';
import 'package:sakura_learn/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes Debug Banner
      home: MainScreen(),
    );
  }
}
