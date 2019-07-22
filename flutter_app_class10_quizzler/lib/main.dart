import 'package:flutter/material.dart';

void main(){
  runApp(QuizzApp(
  ));
}

class QuizzApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Center(child: Text('QuizzApp'),),
        ),
        body: QuizzPage(),
      ),

    );
  }
}

class QuizzPage extends StatefulWidget {
  @override
  _QuizzPageState createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 5,

        ),
        //this is for button
        Expanded(),
        //another button
        Expanded()
      ],
    );
  }
}

