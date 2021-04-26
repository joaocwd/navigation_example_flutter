import 'package:flutter/material.dart';
import 'package:navigation_example_flutter/models/category.dart';
import 'package:navigation_example_flutter/models/word.dart';

const DUMMY_CATEGORIES = const [
  Category(id: 'c1', title: 'Português', color: Colors.green),
  Category(id: 'c2', title: 'Inglês', color: Colors.blue),
  Category(id: 'c3', title: 'Espanhol', color: Colors.yellow),
  Category(id: 'c4', title: 'Russo', color: Colors.red),
  Category(id: 'c5', title: 'Alemão', color: Colors.orange),
];

const DUMMY_WORDS = const [
  Word(
    id: 'w1',
    categories: ['c1'],
    word: 'Aberração',
    imageUrl:
        'https://2.bp.blogspot.com/-MZ42BNLI2iw/WD4q7BPFMqI/AAAAAAAACRI/SCIQpfZkQxcND1cud7U1J6_KmyK3HciuQCLcB/s1600/Comp%2B7_00000.jpg',
    about:
        '1. desvio do que é considerado padrão.\n2. qualidade, condição ou estado de irregularidade que resulta desse desvio.',
    complexity: Complexity.Medium,
    wordSize: WordSize.Medium,
  ),
  Word(
    id: 'w2',
    categories: ['c1'],
    word: 'Elefante',
    imageUrl: 'https://static.biologianet.com/2020/05/elefante-africano.jpg',
    about:
        '1. no jogo do bicho, o 12º grupo, que corresponde ao número 12 e que inclui as dezenas 45, 46, 47 e 48.',
    complexity: Complexity.Simple,
    wordSize: WordSize.Medium,
  ),
  Word(
    id: 'w3',
    categories: ['c1, c2, c3'],
    word: 'Chocolate',
    imageUrl:
        'https://image.freepik.com/vetores-gratis/barra-de-chocolate-quadrado-doce-padrao_24908-59460.jpg',
    about:
        '1. produto alimentício de cor marrom, sólido, pastoso ou em pó, que tem como matéria-prima o cacau a que se adicionam açúcar e certas substâncias aromáticas.',
    complexity: Complexity.Simple,
    wordSize: WordSize.Medium,
  ),
];
