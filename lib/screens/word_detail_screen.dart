import 'package:flutter/material.dart';
import 'package:navigation_example_flutter/models/word.dart';

class WordDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final word = ModalRoute.of(context)!.settings.arguments as Word;

    return Scaffold(
      appBar: AppBar(
        title: Text('${word.word} - DETALHES'),
      ),
      body: Center(
        child: Text(word.about),
      ),
    );
  }
}
