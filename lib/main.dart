import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();  // DELETE

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: const Center(                     // Add the const
          //child: Text(wordPair.asPascalCase), // REPLACE with...
          child: RandomWords(),                 // ...this line
        ),
      ),
    );
  }
}



class RandomWords extends StatefulWidget {
  const RandomWords({ Key? key }) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];                 // NEW
  final _biggerFont = const TextStyle(fontSize: 18); // NEW
  ...
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Startup Name Generator',
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Startup Name Generator'),
      ),
      body: const Center(
        child: RandomWords(),
      ),
    ),
  );
}