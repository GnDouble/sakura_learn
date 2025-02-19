import 'package:flutter/material.dart';
import 'package:sakura_learn/screens/home_screen.dart';

class PracticeScreen extends StatelessWidget {
  const PracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textField = TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black, width: 2),
          // Rounded borders
        ),
        labelText: 'さあ行こう!',
        labelStyle: const TextStyle(fontSize: 18), // Adjust label text size
        hintText: 'Type Romaji Pronunciation',
        hintStyle: const TextStyle(color: Colors.grey), // Hint text color
        filled: true,
        fillColor: Colors.white, // Background color for input
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ), // Padding inside the TextField
      ),
    );
    return Scaffold(
      backgroundColor: pastellBlue, // Make sure pastellBlue is defined
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ), // Add horizontal padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // Center items
          children: [
            Text("Practice Screen"),
            const SizedBox(height: 20), // Add spacing between text and input
            textField,
          ],
        ),
      ),
    );
  }
}
