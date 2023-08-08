import 'package:flutter/material.dart';
import 'package:wordfind_app/task_page.dart';
import 'package:wordfind_app/welcome_page.dart';

void main() {
  runApp(MaterialApp(
    title: "word find game",
    theme: ThemeData(fontFamily: "Ribeye"),
    home: TaskPage(),
  ));
}
