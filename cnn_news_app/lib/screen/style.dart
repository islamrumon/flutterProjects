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
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>SingleScreen()));
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
                          children: <Widget>[
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPc4r0CCFGcUXkQ6Bqi3SC5lb-QRx6TDRCbUffoLscw95HNiqG",
                              fit: BoxFit.cover,
                              width: size.width,
                            ),
                            Positioned(
                                bottom: 50,
                                child: Text('This is title to bangladesh india pakistan china dubai',style: titleTextStyle,))
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
                              Text("65m",style: timeTextStyle,textAlign: TextAlign.start,),
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    onPressed: (){},
                                    icon: bookmark,
                                  ),
                                  IconButton(
                                    onPressed: (){},
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
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>SingleScreen()));
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
                          children: <Widget>[
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPc4r0CCFGcUXkQ6Bqi3SC5lb-QRx6TDRCbUffoLscw95HNiqG",
                              fit: BoxFit.cover,
                              width: size.width,
                            ),
                            Positioned(
                              child: Icon(
                                Icons.play_circle_outline,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                                bottom: 50,
                                child: Text('This is title to bangladesh india pakistan china dubai',style: titleTextStyle,))
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
                              Text("65m",style: timeTextStyle,textAlign: TextAlign.start,),
                             Row(
                               children: <Widget>[
                                 IconButton(
                                   onPressed: (){},
                                   icon: bookmark,
                                 ),
                                 IconButton(
                                   onPressed: (){},
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
