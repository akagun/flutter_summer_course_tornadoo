import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wordfind_app/gradiant_text.dart';
import 'package:wordfind_app/input_field.dart';
import 'package:wordfind_app/task_page.dart';

import 'models/user_model.dart';

User newUser = User(0, "Guest");

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/arrow_back.png'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          height: 50,
          child: Image.asset('assets/game_logo.png'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/back2.png'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(50),
              ),
              Image.asset('assets/iCodeGuyHead.png'),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              GradiantText('Player Name', 20.0),
              InputField(onSubmitted: _createUser,),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: StartButton(newUser),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  _createUser (String userName){
    setState(() {
      newUser.userName = userName;
    });
  }
}

class StartButton extends StatelessWidget {
  const StartButton(User newUser,
      {super.key});

  @override
  Widget build(BuildContext context) {
    if (newUser.userName == "Guest") {
      return Container();
    }else {
      return Container(
        width: 310,
        height: 60,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xFFE86B02), Color(0xFFEA9541)],
            ),
            borderRadius: BorderRadius.circular(25)),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push( context, MaterialPageRoute(builder: (context) => const TaskPage()));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: Text(
            'START',
            style: TextStyle(
                fontFamily: 'Nunito', fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
      );
    }


  }
}

