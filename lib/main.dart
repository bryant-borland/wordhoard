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
      home: const LetterListPage(),
    );
  }
}
