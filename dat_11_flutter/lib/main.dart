import 'package:flutter/material.dart';

void main() {
  print("FLutter day 11");
  final Text myText = Text("Hello Tornadoo",
      style: TextStyle(fontSize: 24, color: Color(0xFFe62d2d)));
  final Center myCenteredText = Center(
    child: myText,
  );
  final Scaffold myNiceDesign = Scaffold(
    body: myCenteredText,
  );
  final MaterialApp myApp = MaterialApp(
    home: myNiceDesign,
  );

  final MySuperApp mySuperApplication = MySuperApp();



  runApp(mySuperApplication);
}
class MySuperApp extends StatelessWidget {

  const MySuperApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Super App')
        ),
          body: Container(
            child: Center(
           child: Text("Hello tornado",
              style: TextStyle(fontSize: 64, color: Color(0xFF9ce62d), fontFamily: 'Ribeye')),
          )),
          floatingActionButton: FloatingActionButton(
          onPressed: () {},
            child: Image.asset('assets/images.jpeg')),
      )
    );
  }

}
