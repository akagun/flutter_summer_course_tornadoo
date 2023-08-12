import 'package:flutter/material.dart';
import 'package:icodegram_app/input_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("iCodegram",
                style: TextStyle(
                    fontSize: 35.5333366394043,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontFamily: "Lobster")),
            InputField(hintText: "Username"),
            InputField(hintText: "Password"),
          ],
        ),
      ),
    ));
  }
}
