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
//          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 220,
                        width: size.width,
                        color: Colors.white,
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: <Widget>[
                            Container(
                              decoration: new BoxDecoration(
                                  image: new DecorationImage(image:  NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPc4r0CCFGcUXkQ6Bqi3SC5lb-QRx6TDRCbUffoLscw95HNiqG"),
                                      fit: BoxFit.cover)
                              ),
                              child: BackdropFilter(
                                filter: prefix0.ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                                child: new Container(
                                  decoration: new BoxDecoration(color: Colors.black.withOpacity(0.3)),
                                ),
                              ),
                            ),

                            Positioned(
                                child: Text(
                              ' sf This is title to bangladesh india pakistan china dubai',
                              style: titleTextStyle,
                            )),
                          ],
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
                                "23m",
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
                            Center(
                              child: Icon(
                                Icons.play_circle_outline,
                                size: 80,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                                child: Text(
                              'This is title to bangladesh india pakistan china dubai',
                              style: titleTextStyle,
                            ))
                          ],
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
            ),
            Padding(
              padding: EdgeInsets.all(3.0),
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
                            Text(
                              'This is title to bangladesh india pakistan china dubai',
                              style: titleTextStyle,
                            )
                          ],
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
            )
          ],
        ),
      ),
    );
  }
}
