import 'package:flutter/material.dart';

void main() {

  const text = Text('hello flutter');
  const center = Center(child: text,);
  const materialApp = MaterialApp(home: center);

  runApp( MaterialApp(
      title: 'Text',
    home: Scaffold(
      body: Center(child:Text('Hello')),
      appBar: AppBar(
        title: const Text('hello'),
      )),
  ));

}

