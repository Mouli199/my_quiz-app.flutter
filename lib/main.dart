import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite animal',
      'answers': [
        {'text': 'lion', 'score': 10},
        {'text': 'tiger', 'score': 8},
        {'text': 'dog', 'score': 6},
        {'text': 'cat', 'score': 5},
        {'text': 'elephant', 'score': 9}
      ],
    },
    {
      'questionText': 'What\'s your favourite bird',
      'answers': [
        {'text': 'peacock', 'score': 10},
        {'text': 'parrot', 'score': 8},
        {'text': 'penguin', 'score': 8},
        {'text': 'swan', 'score': 5}
      ],
    },
    {
      'questionText': 'what\'s the present present president of India',
      'answers': [
        {'text': 'Ram Nath Kovind', 'score': 5},
        {'text': 'Pranab Mukherjee', 'score': 5},
        {'text': 'Droupadi Murmu', 'score': 10}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState((){
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score ;
    // _totalScore = _totalScore + score ;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // ignore: avoid_print
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.cyan.shade300,
        appBar: AppBar(
          title: Text('My first app'),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, () {
          _resetQuiz();
        }),
      ),
    );
  }
}
