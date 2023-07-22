import 'package:flutter/material.dart';
import 'package:wordfind_app/gradiant_letter.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [GradientLetter('W'),
                  GradientLetter('O'),
                  GradientLetter('R'),
                  GradientLetter('D')],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
