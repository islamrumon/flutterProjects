import 'package:clone_bbc_news/pages/PopularPage.dart';
import 'package:flutter/material.dart';
import 'package:clone_bbc_news/pages/topStories.dart';
import 'package:clone_bbc_news/pages/GridView.dart';
import 'package:clone_bbc_news/pages/Listpage.dart';
import 'package:clone_bbc_news/pages/LivePage.dart';
import 'package:clone_bbc_news/pages/VideoPage.dart';
import 'package:clone_bbc_news/pages/Listpage.dart';

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
//  Pageone(),
  TopStories(),
  VideoPage(),
  LivePage(),
  PopularPage(),
  GridViews()
];