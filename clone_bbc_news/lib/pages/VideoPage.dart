import 'package:flutter/material.dart';
import 'package:clone_bbc_news/class/news.dart';
import 'package:clone_bbc_news/ReusabalWidget/GridNews.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.builder(
          itemCount: listOfNews.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return GridNews(
              title: listOfNews[index].title,
              image: listOfNews[index].image,
              location: listOfNews[index].location.toString(),
              time: listOfNews[index].time.toString(),
              detials: listOfNews[index].detials.toString(),
            );
          }),
    );
  }
}
