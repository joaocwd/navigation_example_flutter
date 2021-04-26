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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: Image.network(
                    word.imageUrl,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    word.word,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 15,
              ),
              child: Container(
                width: double.infinity,
                child: Text(
                  word.about,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4,
                  softWrap: true,
                ),
              ),
            ),
            // Center(
            //   child: Text(word.about),
            // ),
          ],
        ),
      ),
    );
  }
}
