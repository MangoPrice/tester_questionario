import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'A empresa te fornece oportunidades?',
      'answers': [
        {'text': 'Sim, muitas', 'score': 10},
        {'text': 'Sim, mas poucas', 'score': 5},
        {'text': 'Nao', 'score': -10},
        {'text': 'Nao sei', 'score': -5}
      ],
    },
    {
      'questionText': 'Voce se sente escutado?',
      'answers': [
        {'text': 'Sim', 'score': 10},
        {'text': 'Sim, mas pouco', 'score': 5},
        {'text': 'Nao', 'score': -10},
        {'text': 'Nao sei', 'score': -5}
      ],
    },
    {
      'questionText': 'Voce gosta de trabalhar com sua equipe?',
      'answers': [
        {'text': 'Sim, muito', 'score': 10},
        {'text': 'Sim', 'score': 5},
        {'text': 'Nao', 'score': -10},
        {'text': 'Nao sei', 'score': -5}
      ],
    },
    {
      'questionText': 'Voce sente que seu trabalho e reconhecido?',
      'answers': [
        {'text': 'Sim, muito', 'score': 10},
        {'text': 'Sim, mas pouco', 'score': 5},
        {'text': 'Nao', 'score': -10},
        {'text': 'Nao sei', 'score': -5}
      ],
    },
    {
      'questionText': 'Voce se sente inspirado a dar seu melhor?',
      'answers': [
        {'text': 'Sim, muito', 'score': 10},
        {'text': 'Sim, mas pouco', 'score': 5},
        {'text': 'Nao', 'score': -10},
        {'text': 'Nao sei', 'score': -5}
      ],
    },
    {
      'questionText': 'Voce se ve crescendo dentro da empresa futuramente?',
      'answers': [
        {'text': 'Sim, muito', 'score': 10},
        {'text': 'Sim', 'score': 5},
        {'text': 'Nao', 'score': -10},
        {'text': 'Nao sei', 'score': -5}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
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
        appBar: AppBar(
          title: Text('Questionario'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
