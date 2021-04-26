import 'package:flutter/material.dart';
import 'package:navigation_example_flutter/models/word.dart';
import 'package:navigation_example_flutter/utils/app_routes.dart';

class WordItem extends StatelessWidget {
  final Word word;

  const WordItem(this.word);

  void _selectWord(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.WORD_DETAILS,
      arguments: word,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).accentColor,
      onTap: () => _selectWord(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    word.imageUrl,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 3,
                  right: 3,
                  child: Container(
                    width: 300,
                    color: Colors.black87,
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    child: Text(
                      word.word,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.settings_input_composite_outlined),
                      SizedBox(width: 10),
                      Text('${word.complexityText}')
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.format_size_sharp),
                      SizedBox(width: 10),
                      Text('${word.wordSizeText}')
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
