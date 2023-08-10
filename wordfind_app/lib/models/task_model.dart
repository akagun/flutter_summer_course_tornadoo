

import 'package:flutter/cupertino.dart';
import 'package:wordfind_app/models/char_model.dart';

class TaskModel {
  TaskModel ({
    required this.pathImage,
    required this.question,
    required this.answer,
    this.arrayButtons = const [],
  });

  String question;
  String pathImage;
  String answer;
  bool isDone = false;
  bool isFull = false;
  List<CharModel> puzzles = [];
  List<String> arrayButtons = [];


   setWordFindChar(List<CharModel> puzzles) {
     this.puzzles = puzzles;
  }
  setIsDone() {
    isDone = true;
  }
  fielCompleteCorrect () {
    bool complete = puzzles.where((puzzle) => puzzle.currentValue == null).isEmpty;
    if (!complete) isFull = false;
    String answeredString = puzzles.map((puzzle) => puzzle.currentValue).join("");
    answeredString == answer;
    return answeredString;
  }
  TaskModel Clone () {
     return TaskModel(pathImage: pathImage, question: question, answer: answer);
  }
}