import "question.dart";
import 'package:flutter/material.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Icon> scorekeeper = [];
  List<Question> _QuestionBank = [
    Question("cow gives milk.", true),
    Question("sky is blue.", true),
    Question("blood colour is not red.", false),
    Question("flutter has many widgets.", true),
    Question("We cannot create ios app using flutter.", false),
    Question("pure water is colourless.", true),
    Question("silkworm gives silk.", true),
    Question("cow drinks milk.", false),
    Question("2+2!=4", false),
    Question("flutter has no container widget", false),
    Question("leaves have chrolophyll", true),
    Question("covid-19 was first seen in jan 25", false),
    Question("nikolas tesla is the father of modern computer science", false),
    Question("thermometer is an instrument to measure temperature", true),
    Question("mouse eats cat", false),
    Question("you are playing quiz now", true),
    Question("is this the last question for quiz", true),
  ];
  void initialize() {
    _questionNumber = 0;
  }

  void nextQuestion() {
    if (_questionNumber < _QuestionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _QuestionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _QuestionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber == _QuestionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }
}
