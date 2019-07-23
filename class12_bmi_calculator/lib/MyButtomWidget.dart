import 'package:flutter/material.dart';
const buttomHight = 80.0;
class MyButtomWidget extends StatelessWidget {

  MyButtomWidget({this.myOnTab,this.text});
  final Function myOnTab;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myOnTab,
      child: Container(
        padding: EdgeInsets.all(18.0),
        child: Text(text,textAlign: TextAlign.center, style: TextStyle(
          fontSize: 34,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
        margin: EdgeInsets.only(top: 10.0),
        color: Colors.redAccent,
        width: double.infinity,
        height: buttomHight,
      ),
    );
  }
}
