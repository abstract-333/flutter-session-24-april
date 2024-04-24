import 'package:flutter/material.dart';
import 'package:flutter_second_example/word.dart';

class WordScreen extends StatelessWidget {
  final Word word;
  const WordScreen({super.key, required this.word});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(word.englishName),
      ),
      body: Center(
        child: Column(children: [
          Container(
            height: 40,
          ),
          Text(
            word.englishName,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          Container(
            height: 40,
          ),
          Text(
            word.arabicName,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          Container(
            height: 40,
          ),
          Icon(word.icon, size: 55),
        ]),
      ),
    );
  }
}
