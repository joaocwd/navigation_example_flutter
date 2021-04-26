import 'package:flutter/material.dart';
import 'package:navigation_example_flutter/screens/categories_screen.dart';
import 'package:navigation_example_flutter/screens/categories_words_screen.dart';
import 'package:navigation_example_flutter/utils/custom_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IDIOMAS',
      theme: ThemeData(
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CustomPageTransitionBuilder(),
            TargetPlatform.iOS: CustomPageTransitionBuilder(),
          },
        ),
        primarySwatch: Colors.red,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 253, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline1: TextStyle(
                fontSize: 20,
                fontFamily: 'Roboto',
                // color: Colors.white,
              ),
            ),
      ),
      home: CategoriesScreen(),
      routes: {
        '/categories-words': (ctx) => CategoriesWordsScreen(),
      },
    );
  }
}
