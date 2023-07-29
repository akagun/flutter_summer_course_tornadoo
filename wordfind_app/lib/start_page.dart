import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFBFF5F2),
        appBar: AppBar(
          leading: IconButton(
            icon: Image.asset('arrow_back.png'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: SizedBox(
            height: 50,
            child: Image.asset('game_logo.png'),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Back2.png'),
            fit: BoxFit.cover
          ),
        ),
        child: Center(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(50),),
                Image.asset('assets/iCodeGuyHead.png'),
                Padding(padding: )
              ],
            ),
        ),));

  }
}
