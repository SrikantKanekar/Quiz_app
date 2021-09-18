import 'package:flutter/material.dart';
import 'package:quiz_app/data.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _data = dataList;

  var _index = 0;
  var _score = 0;

  void _answerQuestion(int score) {
    _score += score;
    setState(() {
      _index++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _index = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: (_index < _data.length)
            ? Quiz(data: _data, index: _index, answerQuestion: _answerQuestion)
            : Result(_score, _resetQuiz),
      ),
    );
  }
}
