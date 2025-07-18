import 'package:flutter/material.dart';
import 'screens/letter_list.dart';

void main() {
  runApp(const WordHoardApp());
}

class WordHoardApp extends StatelessWidget {
  const WordHoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WordHoard',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F0E6), // soft parchment color
        primarySwatch: Colors.brown,
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 16),
        ),
      ),
      home: const LetterListPage(),
    );
  }
}
