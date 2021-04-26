import 'package:flutter/material.dart';
import 'package:navigation_example_flutter/models/category.dart';

class CategoriesWordsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MODALROUTE pega todos os argumentos passado para a rota
    final category = ModalRoute.of(context)!.settings.arguments as Category;

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
