import 'package:flutter/material.dart';
import 'package:navigation_example_flutter/models/category.dart';

class CategoriesWordsScreen extends StatelessWidget {
  final Category category;

  CategoriesWordsScreen(this.category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Text('Palavras por categoria ${category.id}'),
      ),
    );
  }
}
