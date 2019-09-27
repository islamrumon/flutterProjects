import 'package:flutter/material.dart';

final primaryColor = Color.fromRGBO(187, 25, 25, 1);
final appbarTextStyle = TextStyle(color: Colors.white);
final tabBarTestStyle =TextStyle(color:Colors.black);
final tabBarColors = Colors.white;
final detailTitleStyle =TextStyle();
final detailstextStyle = TextStyle();
final textDetailsbold =TextStyle();
final addsColor = Colors.white;
final addsTextStyle =TextStyle();
final textDetails =TextStyle();
final titlastyle =TextStyle();
final gridTitleStyle =TextStyle();
final gridTimeStyle =TextStyle();
final gridTopicStyle =TextStyle();
//final gridTitleStyle =TextStyle();
final blackColor =Colors.black;
final videoTextColors =Colors.black;
final textColors =Colors.black;


//news title style
final titleTextStyle = TextStyle(color: Colors.white,fontSize: 14);
final bookmark = Icon(Icons.bookmark_border,size: 14,color: Colors.black,);
final shareicon = Icon(Icons.share,size: 14,color: Colors.black,);
final timeTextStyle = TextStyle(color: primaryColor,fontSize: 12,);


final footer = Container(
  padding: EdgeInsets.all(8.0),
  height: 60,
  child: Center(
    child: Text(
      "TM & © 2019 Turner Broadcasting System, Inc.\t A WarnerMedia Company.\tAll Rights Reserved.",
      style: TextStyle(color: Colors.black, fontSize: 15),
    ),
  ),
);