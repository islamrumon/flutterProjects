import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

//this is Drawer section
final childMenuStyle = TextStyle(color: Colors.white60, fontSize: 14);
final parantMenuStyle =
    TextStyle(color: Colors.white70, fontWeight: FontWeight.bold);
final childMenuBackgroundColor = Colors.black26;
final drawerIconColor = Colors.white;
final drawerBackgroundColors = Colors.black;

//this is AppBar section
final iconColor = Colors.white;

//this is TabBar section
final indicatorColor = Colors.white;

//list view news designn
final titlastyle = TextStyle(
  fontFamily: 'bangla',
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

//full news ,fullNews with Details,
final titleStyle = TextStyle(
  fontSize: 18,
  color: Colors.black,
);
final detailStyle = TextStyle();

//this is full video news details
final titleStyleVideo = TextStyle(
  fontSize: 18,
  color: Colors.white,
);
final videoTextColors = Colors.white;
//topics design
final topicsText = TextStyle(
  fontStyle: FontStyle.italic,
  fontSize: 16,
  color: Colors.black,
);
//Color.fromRGBO(187, 25, 25, 1)
final primaryColor = Color.fromRGBO(187, 25, 25, 1);
final detailVideoStyle = TextStyle(color: Colors.white);

//show time design
final timeColors = Colors.grey;

//adds design
final addsTextStyle =
    TextStyle(color: Colors.grey, fontSize: 14, fontStyle: FontStyle.normal);

//grid view design
final textColors = Colors.white;
final gridTitleStyle = TextStyle(color: Colors.white, fontSize: 13);
final gridTimeStyle = TextStyle(color: Colors.grey, fontSize: 12);
final gridTopicStyle = TextStyle(color: Colors.white, fontSize: 12);

//without action text style
final headText = TextStyle(color: Colors.black, fontSize: 16);

//this is footer section
final footer = Container(
  padding: EdgeInsets.all(8.0),
  height: 60,
  child: Center(
    child: Text(
      "rumon 2019 @ natok",
      style: TextStyle(color: Colors.black, fontSize: 15),
    ),
  ),
);


final blackColor = Colors.black;