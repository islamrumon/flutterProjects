import 'package:flutter/material.dart';
import 'package:cnn_news_app/helper/helper.dart';

class GridNews extends StatefulWidget {
  String title;
  String image;
  String detials;
  String time;
  String location;
  GridNews({this.title, this.detials, this.image, this.location, this.time});
  @override
  _GridNewsState createState() => _GridNewsState();
}

class _GridNewsState extends State<GridNews> {
//  _GridNewsState({});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){},
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.network(
                    widget.image,
                    fit: BoxFit.cover,
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}