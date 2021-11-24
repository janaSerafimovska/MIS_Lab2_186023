import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget {
  String answerText;
  VoidCallback tapped;

  ClothesAnswer(this.tapped, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: tapped,
          child: Text(
            answerText,
            style: const TextStyle(color: Colors.red),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.green.shade700,
          )),
    );
  }
}
