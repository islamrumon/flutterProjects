import 'package:flutter/material.dart';
import 'FirstScreen.dart';
void main(){
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor:Color(0xFF0A0E21),
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child:Scaffold(
            appBar: AppBar(

              title: Center(
                child: Text("BMI Calculator"),
              ),
            ),
            body: FirstScreen(),
          ) ,
      ),
    );
  }
}



