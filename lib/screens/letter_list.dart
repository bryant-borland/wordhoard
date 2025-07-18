import 'package:flutter/material.dart';
import 'letter_detail.dart';

class LetterListPage extends StatelessWidget {
  const LetterListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final letters = [
      {
        'letter': 'þ',
        'name': 'Thorn',
        'pronunciation': '/θ/',
        'example': 'þæt',
        'description': 'Thorn represented the "th" sound in Old English.',
      },
      {
        'letter': 'ð',
        'name': 'Eth',
        'pronunciation': '/ð/',
        'example': 'oðer',
        'description': 'Eth represented the voiced "th" as in "this".',
      },
      {
        'letter': 'æ',
        'name': 'Ash',
        'pronunciation': '/æ/',
        'example': 'dæg',
        'description': 'Ash sounded like the "a" in "cat".',
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('WordHoard')),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/brown-papyrus-paper.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: letters.length,
          itemBuilder: (context, index) {
            final letter = letters[index];
            return ListTile(
              title: Text(letter['name']!),
              // subtitle: Text(letter['letter']! + ' - ' + letter['pronunciation']!),
              // Should use string interpolation instead, thanks Flutter!
              subtitle: Text(
                '${letter['letter']} - ${letter['pronunciation']}',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LetterDetailPage(
                      letter: letter['letter']!,
                      name: letter['name']!,
                      pronunciation: letter['pronunciation']!,
                      example: letter['example']!,
                      description: letter['description']!,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
