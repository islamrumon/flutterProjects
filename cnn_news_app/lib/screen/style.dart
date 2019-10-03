import 'dart:ui' as prefix0;

import 'package:cnn_news_app/screen/single_news_screen.dart';
import 'package:flutter/material.dart';
import 'package:cnn_news_app/helper/helper.dart';

class Screens extends StatefulWidget {
  @override
  _ScreensState createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //First News
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Card(
                elevation: 8.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => SingleScreen()));
                      },
                      child: Container(
                        height: 220,
                        width: size.width,
                        color: Colors.white,
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: <Widget>[
                            Container(
                              decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                      image: NetworkImage(
                                          "https://static.independent.co.uk/s3fs-public/thumbnails/image/2016/01/07/10/GettyImages-111601909.jpg?w968h681"),
                                      fit: BoxFit.cover)),
                              child: BackdropFilter(
                                filter: prefix0.ImageFilter.blur(
                                    sigmaX: 0, sigmaY: 0),
                                child: new Container(
                                  decoration: new BoxDecoration(
                                      color: Colors.black.withOpacity(0)),
                                ),
                              ),
                            ),
                            Positioned(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                              'Donald John Trump is the 45th and current president of the United States. ',
                              style: titleTextStyle,
                            ),
                                )),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      height: 50,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "23m",
                              style: timeTextStyle,
                            ),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {},
                                  icon: bookmark,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: shareicon,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Card(
                elevation: 8.0,
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => SingleScreen()));
                      },
                      child: Container(
                        height: 220,
                        width: size.width,
                        color: Colors.white,
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: <Widget>[
                            Container(
                              decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                      image: NetworkImage(
                                          "https://www.ittefaq.com.bd/assets/news_photos/2019/10/03/image-93897-1570113787.jpg"),
                                      fit: BoxFit.cover)),
                              child: BackdropFilter(
                                filter: prefix0.ImageFilter.blur(
                                    sigmaX: .5, sigmaY: .5),
                                child: new Container(
                                  decoration: new BoxDecoration(
                                      color: Colors.black.withOpacity(0.1)),
                                ),
                              ),
                            ),

                            Center(
                              child: Icon(
                                Icons.play_circle_outline,
                                size: 80,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                              "Stay on top of Irans latest developments on the ground with Al Jazeera's fact-based news",
                              style: titleTextStyle,
                            ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 50,

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "",
                              style: timeTextStyle,

                            ),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {},
                                  icon: bookmark,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: shareicon,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3.0),
              child: Card(
                elevation: 8.0,
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => SingleScreen()));
                      },
                      child: Container(
                        height: 220,
                        width: size.width,
                        color: Colors.white,
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: <Widget>[
                            Container(
                              decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                      image: NetworkImage(
                                          "https://www.ittefaq.com.bd/assets/news_photos/2019/10/03/image-93989-1570116840.jpg"),
                                      fit: BoxFit.cover)),
                              child: BackdropFilter(
                                filter: prefix0.ImageFilter.blur(
                                    sigmaX: .5, sigmaY: .5),
                                child: new Container(
                                  decoration: new BoxDecoration(
                                      color: Colors.black.withOpacity(0.1)),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Container(
                                color: primaryColor,
                                width: 80,
                                height: 25,
                                child: Center(
                                    child: Text(
                                      "Politics",
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                            ),
                            Center(
                              child: Icon(
                                Icons.play_circle_outline,
                                size: 80,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'ভারত-পাকিস্তান যুদ্ধ বাধলে মারা যাবে সাড়ে ১২ কোটি!',
                                style: titleTextStyle,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "",
                              style: timeTextStyle,
                              textAlign: TextAlign.start,
                            ),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {},
                                  icon: bookmark,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: shareicon,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => SingleScreen()));
                },
                child: Card(
                  elevation: 8.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 220,
                        width: size.width,
                        color: Colors.white,
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: <Widget>[
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPc4r0CCFGcUXkQ6Bqi3SC5lb-QRx6TDRCbUffoLscw95HNiqG",
                              fit: BoxFit.cover,
                              width: size.width,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "How to add Border to a raised button? How to add Border to a raised button?",
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('facebook.com'),
                                  RaisedButton(
                                    onPressed: () {},
                                    child: Text("Visit Site"),
                                    elevation: 0,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(3.0),
              child: Card(
                elevation: 8.0,
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => SingleScreen()));
                      },
                      child: Container(
                        height: 220,
                        width: size.width,
                        color: Colors.white,
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: <Widget>[
                            Container(
                              decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                      image: NetworkImage(
                                          "https://www.ittefaq.com.bd/assets/news_photos/2019/10/03/image-94049-1570124901.jpg"),
                                      fit: BoxFit.cover)),
                              child: BackdropFilter(
                                filter: prefix0.ImageFilter.blur(
                                    sigmaX: .5, sigmaY: .5),
                                child: new Container(
                                  decoration: new BoxDecoration(
                                      color: Colors.black.withOpacity(0.1)),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Container(
                                color: primaryColor,
                                width: 80,
                                height: 25,
                                child: Center(
                                    child: Text(
                                      "Politics",
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                            ),
                            Center(
                              child: Icon(
                                Icons.play_circle_outline,
                                size: 80,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'দক্ষিণ কোরিয়ায় টাইফুন মিতাগর কেড়ে নিল ৯ প্রাণ',
                                style: titleTextStyle,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    Container(

                      width: size.width,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "",
                                  style: timeTextStyle,
                                  textAlign: TextAlign.start,
                                ),
                                Row(
                                  children: <Widget>[
                                    IconButton(
                                      onPressed: () {},
                                      icon: bookmark,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: shareicon,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 1,
                                    color: Colors.grey,
                                  ),
                                )),
                            margin: EdgeInsets.only(left: 10,right: 10),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 8,right: 8,top: 8,bottom: 4),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.assignment),
                                  onPressed: (){},
                                  color: Colors.grey,
                                ),
                                Expanded(
                                    child:
                                    Text("The White House is  strategy to slow the Democratic impeachment machine",style: praTextStyle,)),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 8,right: 8,top: 8,bottom: 4),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.assignment),
                                  onPressed: (){},
                                  color: Colors.grey,
                                ),
                                Expanded(child: Text("The White House is  strategy to slow the Democratic impeachment machine",style: praTextStyle,)),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 8,right: 8,top: 8,bottom: 4),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.assignment),
                                  onPressed: (){},
                                  color: Colors.grey,
                                ),
                                Expanded(child: Text("The White House is  strategy to slow the Democratic impeachment machine",style: praTextStyle,)),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 8,right: 8,top: 8,bottom: 4),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.assignment),
                                  onPressed: (){},
                                  color: Colors.grey,
                                ),
                                Expanded(child: Text("The White House is  strategy to slow the Democratic impeachment machine",style: praTextStyle,)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
