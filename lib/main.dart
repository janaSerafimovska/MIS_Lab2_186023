import 'package:flutter/material.dart';
import 'package:mis_lab/clothes_answer.dart';
import './clothes_question.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyAppState());
}

class MyAppStateState extends State<MyAppState> {
  void _iWasTapped() {
    setState(() {
      if (_questionIndex + 1 < questions.length)
        _questionIndex += 1;
      else {
        _questionIndex = 0;
      }
    });
  }

  var questions = [
    {
      'question': 'Select one',
      'answer': ['Shirt', 'Jeans', 'T-Shirt']
    },
    {
      'question': 'Select size',
      'answer': ['Small', 'Medium', 'Large', 'XL']
    },
    {
      'question': 'Select color',
      'answer': ['Blue', 'White', 'Black']
    },
  ];
  int _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello World"),
        ),
        body: Column(
          children: [
            ClothesQuestion(questions[_questionIndex]['question'] as String),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answer) {
              return ClothesAnswer(_iWasTapped, answer);
            }),
          ],
        ),
      ),
    );
  }
}

class MyAppState extends StatefulWidget {
  const MyAppState({Key? key}) : super(key: key);

  @override
  MyAppStateState createState() => MyAppStateState();
}
