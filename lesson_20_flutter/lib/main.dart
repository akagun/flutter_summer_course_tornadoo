import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/screen_package/signupscreen.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  runApp (MaterialApp(
    home: SignUpScreen(),
  ));
}

