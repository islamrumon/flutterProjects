import 'package:flutter/material.dart';

final primaryColor = Color.fromRGBO(187, 25, 25, 1);
final appbarTextStyle = TextStyle(color: Colors.white);
final tabBarTestStyle =TextStyle(color:Colors.black,fontWeight: FontWeight.bold);
final tabBarColors = Colors.white;
final detailTitleStyle =TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold);
final detailstextStyle = TextStyle(color: Colors.black,fontSize: 18);
final textDetailsbold =TextStyle(color: Colors.black,fontSize: 14);
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
final titleTextStyle = TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold);
final bookmark = Icon(Icons.bookmark_border,size: 24,color: Colors.black,);
final shareicon = Icon(Icons.share,size: 24,color: Colors.black,);
final timeTextStyle = TextStyle(color: primaryColor,fontSize: 14,fontWeight: FontWeight.bold);
final praTextStyle =TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14);


final footer = Container(
  padding: EdgeInsets.all(8.0),

  child: Text(
    "TM & © 2019 Turner Broadcasting System, Inc.\n A WarnerMedia Company.\n All Rights Reserved.",
    style: TextStyle(color: Colors.black, fontSize: 15),
  ),
);