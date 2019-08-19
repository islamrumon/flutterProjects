import 'package:flutter/material.dart';
import 'ScreenOne.dart';

void main() {
  runApp(Screens());
}

class Screens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(cursorColor: Colors.green, primaryColor: Colors.black),
      color: Colors.white,
      home: Scaffold(body: ScreenOne()),
    );
  }
}

