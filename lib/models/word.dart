import 'package:flutter/foundation.dart';

enum Complexity {
  Simple,
  Medium,
  Difficult,
}

enum WordSize {
  Small,
  Medium,
  Big,
}

class Word {
  final String id;
  final List<String> categories;
  final String word;
  final String imageUrl;
  final String about;
  final Complexity complexity;
  final WordSize wordSize;

  const Word({
    required this.id,
    required this.categories,
    required this.word,
    required this.imageUrl,
    required this.about,
    required this.complexity,
    required this.wordSize,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simples';
      case Complexity.Medium:
        return 'Médio';
      case Complexity.Difficult:
        return 'Difícil';
      default:
        return 'Desconhecido';
    }
  }

  String get wordSizeText {
    switch (wordSize) {
      case WordSize.Small:
        return 'Pequeno';
      case WordSize.Medium:
        return 'Médio';
      case WordSize.Big:
        return 'Grande';
      default:
        return 'Desconhecido';
    }
  }
}
