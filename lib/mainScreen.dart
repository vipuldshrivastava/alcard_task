import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:alcard_task/screen2.dart';


class MainScreen extends StatefulWidget{
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  var top = 10.0;
  var left = 10.0;

  @override
  Widget build(BuildContext context){
    final mq = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        /* Do something here if you want */
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text('ALCARD'),
        ),
        body: Stack(
          children: [ 
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed('/new1');
              },
              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Image.asset('asset/image.png',height: mq.height,width: mq.width)),
              ),
            ),
            GestureDetector(
            child: Stack(
              children: [
                Positioned(
                  top: top,
                  left: left,
                  child: AnimatedTextKit(
                    isRepeatingAnimation: false,
                    stopPauseOnTap: true,
                    animatedTexts: [
                      TypewriterAnimatedText('WELCOME TO ALCARD',textStyle:TextStyle(fontSize: 20),speed: Duration(milliseconds: 1000)),
                    ],
                  ),)
              ],
            ),
            onVerticalDragUpdate: (DragUpdateDetails DD){
              setState(() {
                top = DD.localPosition.dx;
                left = DD.localPosition.dy;
              });
            },
          ),
          ],
        )
      ),
    );
  }
}
