import 'package:flutter/material.dart';


class Screen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('ALCARD'),
        centerTitle: true,
      ),
      body: Center(
      child:  Stack(
        children: [ 
          Center(child: Image.asset('asset/image.png')),  
          Center(child: Text('Welcome to ALCARD',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.white),))]),
      ),
    );
  }
}