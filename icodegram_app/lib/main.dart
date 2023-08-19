import 'package:flutter/material.dart';
import 'package:icodegram_app/screens/login_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 1),
      textTheme: Typography().white.apply(fontFamily: 'Rubik'),
    ),
    home: LoginScreen(),
  ));
}
