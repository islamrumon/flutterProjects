import 'package:flutter/material.dart';
import 'package:cnn_news_app/screen/style.dart';
import 'package:cnn_news_app/helper/helper.dart';

final tablBarList = [
  Tab(
    child: Text("Top Stories ",style: tabBarTestStyle,),
  ),
  Tab(
    child: Text("Bangladesh",style: tabBarTestStyle),
  ),
  Tab(
    child: Text("India",style: tabBarTestStyle),
  ),
  Tab(
    child: Text("Pakistha",style: tabBarTestStyle),
  ),
  Tab(
    child: Text("USA",style: tabBarTestStyle),
  ),
  Tab(
    child: Text("UK",style: tabBarTestStyle),
  ),
  Tab(
    child: Text("London",style: tabBarTestStyle),
  ),
  Tab(
    child: Text("Brazil",style: tabBarTestStyle),
  ),
  Tab(
    child: Text("Finland",style: tabBarTestStyle),
  ),
  Tab(
    child: Text("Asia",style: tabBarTestStyle),
  ),
];

final tabViewPage= [
Screens(),
Screens(),
Screens(),
Screens(),
Screens(),
Screens(),
Screens(),
Screens(),
Screens(),
Screens(),
];