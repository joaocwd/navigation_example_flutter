import 'package:flutter/material.dart';
import 'package:navigation_example_flutter/components/word_item.dart';
import 'package:navigation_example_flutter/data/dummy_data.dart';
import 'package:navigation_example_flutter/models/category.dart';

class CategoriesWordsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MODALROUTE pega todos os argumentos passado para a rota
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final categoryWords = DUMMY_WORDS.where((word) {
      return word.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: categoryWords.length,
          itemBuilder: (ctx, index) {
            return WordItem(categoryWords[index]);
          },
        ),
      ),
    );
  }
}
