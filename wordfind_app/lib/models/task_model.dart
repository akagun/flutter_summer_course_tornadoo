
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:wordfind_app/models/char_model.dart';

class TaskModel {
  String question;
  String pathImage;
  String answer;
  bool isDone = false;
  bool isFull = false;
  List<CharModel> puzzles = [],
  List<String> arrayButtons = [],

  TaskModel (
  required this.pathImage;
  required this.question;
  required this.answer;
  this.arrayButtons = const [];
      )
  setWordFindChar() {
    CharModel(
    this.puzzles = puzzles;
    )
  }
  setIsDone() {
    isDone = true;
  }
  fielCompleteCorrect () {
    return bool;
    bool complete = puzzles.where((puzzles) => puzzle.currentValue == null).isEmpty
  }
}