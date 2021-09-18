import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> data;
  final int index;
  final Function answerQuestion;

  const Quiz(
      {required this.data,
      required this.index,
      required this.answerQuestion,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(50),
      child: Column(
        children: [
          Question(data.elementAt(index)['questionText'] as String),
          ...(data.elementAt(index)['answers'] as List<Map<String, Object>>).map((answer) {
            return Answer(
              answer['text'] as String,
              () => answerQuestion(answer['score'] as int),
            );
          })
        ],
      ),
    );
  }
}
