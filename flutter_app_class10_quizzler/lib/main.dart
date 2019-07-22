import 'package:flutter/material.dart';
import 'QuizzPage.dart';

void main(){
  runApp(QuizzApp());
}

class QuizzApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Center(child: Text('QuizzApp'),),
          ),

          body: QuizzPage(),
        ),
      ),

    );
  }
}



