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
      elevation: 4,
      child: InkWell(
        onTap: null,
        child: Hero(
          tag: widget.title,
          child: Container(
            color: blackColor,
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.network(
                      widget.image,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 25,
                        width: 70,
                        color: blackColor,
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.play_arrow,
                              color: videoTextColors,
                            ),
                            Text('01.50',
                                style: TextStyle(color: videoTextColors)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  color: blackColor,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //topics
                      //title
                      Text(
                        widget.title,
                        style:
                        gridTitleStyle,
                      ),

//                      Row(
//                        children: <Widget>[
////                                  Icon(
////                                    Icons.play_arrow,
////                                    color: videoTextColors,
////                                  ),
//                          Expanded(
//                            child: Text(
//                              widget.title,
//                              style:
//                              gridTitleStyle,
//                            ),
//                          ),
//                        ],
//                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('2h ago', style: gridTimeStyle),
                          SizedBox(
                            child: Text(
                              '  |  ',
                              style: TextStyle(color: textColors),
                            ),
                          ),
                          Text('USA & CANADA', style: gridTopicStyle),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}