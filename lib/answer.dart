import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const Answer(this.text, this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
