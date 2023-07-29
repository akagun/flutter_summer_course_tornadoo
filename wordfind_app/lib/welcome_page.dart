import 'package:flutter/material.dart';
import 'package:wordfind_app/gradiant_letter.dart';

import 'gradiant_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      floatingActionButton: Container(
        width: 310,
        height: 60,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back1.png'),
          fit: BoxFit.cover),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFFE86B02),
                  Color(0xFFFA9541),
                ]),
            borderRadius: BorderRadius.circular(25)),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
          child: Text("PLAY",
              style: TextStyle(
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w700,
                  fontSize: 24)),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/back1.png'),
          fit: BoxFit.cover),
        ),
        child: Container(
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientLetter('W'),
                    GradientLetter('O'),
                    GradientLetter('R'),
                    GradientLetter('D')
                  ],
                ),
                GradiantText("Game", 31.6),
                Expanded(child: GradiantText("READY?", 25.0)),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
