import 'package:flutter/material.dart';
import 'package:cnn_news_app/helper/helper.dart';

class BookmarkScreen extends StatefulWidget {
  @override
  _BookmarkScreenState createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Center(
          child: Text("Saved Story",style: appbarTextStyle,),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle
                ),
                child: Icon(Icons.bookmark,size: 300,color: Colors.white,),
              ),
              Text("NO SaveStory found"),

            ],
          ),
        ),
      ),
    );
  }
}
