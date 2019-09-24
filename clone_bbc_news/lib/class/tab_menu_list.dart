
import 'package:flutter/material.dart';
import 'package:clone_bbc_news/screen/live_screen.dart';
import 'package:clone_bbc_news/screen/popular_screen.dart';
import 'package:clone_bbc_news/screen/top_screen.dart';
import 'package:clone_bbc_news/screen/video_screen.dart';


final tabMenuList = [
  Tab(
    child: Container(
      child: Text("Top Stories"),
    ),
  ),
  Tab(
    child: Container(
      child: Text("Video"),
    ),
  ),
  Tab(
    child: Container(
      child: Text("My News"),
    ),
  ),
  Tab(
    child: Container(
      child: Text("Popular"),
    ),
  ),
  Tab(
    child: Container(
      child: Text("Live"),
    ),
  ),
];

//todo:this is TabViewPage List

final tabViewPages = [
  TopStories(),
  VideoPage(),
  LivePage(),
  PopularPage(),
  TopStories(),
];