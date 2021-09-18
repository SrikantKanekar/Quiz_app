import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback onPressed;

  const Result(this.score, this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(50),
        child: Column(
          children: [
            Text(
              'Your score is $score',
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(onPressed: onPressed, child: const Text('Reset'))
          ],
        ),
      ),
    );
  }
}
