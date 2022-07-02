import 'package:alcard_task/screen2.dart';
import 'package:flutter/material.dart';
import 'package:alcard_task/screen2.dart';
import './mainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MainScreen(),

      routes: {
        '/new1': (BuildContext context) => Screen2(),
      },
    );
  }

}