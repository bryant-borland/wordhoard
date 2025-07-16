import 'package:flutter/material.dart';

class LetterDetailPage extends StatelessWidget {
  final String letter;
  final String name;
  final String pronounciation;
  final String example;
  final String description;

  const LetterDetailPage({
    super.key,
    required this.letter,
    required this.name,
    required this.pronounciation,
    required this.example,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(letter, style: TextStyle(fontSize: 64)),
            Text('Pronounciation: $pronounciation'),
            Text('Example: $example'),
            SizedBox(height: 16),
            Text(description),
          ],
        ),
      ),
    );
  }
}
