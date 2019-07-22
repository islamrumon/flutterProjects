import 'dart:math';
import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text('Dicee'),
          )
        ),

        body: Diceepage(),
      )
    )
  );
}

class Diceepage extends StatefulWidget {
  @override
  _DiceepageState createState() => _DiceepageState();
}

class _DiceepageState extends State<Diceepage> {
  int leftDicel = 2;
  int rightDicel = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: (){
                  setState(() {
                    leftDicel = Random().nextInt(6)+1;
                  });
                }, 
                child: Image.asset('images/dice$leftDicel.png')
            ),
          ),
          //another image rumon
          Expanded(
            child: FlatButton(
                onPressed: (){
                  setState(() {
                     rightDicel =Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice$rightDicel.png')),
          ),
        ],
      ),
    );
  }
}


//class Diceepage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Row(
//      children: <Widget>[
//        Expanded(
//          child: Image.asset('images/dice1.png'),
//        ),
//        Expanded(
//          child: Image.asset('images/dice3.png'),
//        )
//      ],
//    );
//  }
//}

