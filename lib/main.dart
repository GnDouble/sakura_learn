import 'package:flutter/material.dart';
import '/screens/home_screen.dart';



const IconData home = IconData(0xe318, fontFamily: 'MaterialIcons');

void main() {
  runApp(MyApp());
}
 



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes Debug Banner
      home: HomeScreen(),
    );
  }
}

