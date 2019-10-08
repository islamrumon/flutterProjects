import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:the_telegraph_flutter/helper/helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:the_telegraph_flutter/screens/setting_screen.dart';
import 'package:the_telegraph_flutter/screens/single_news_screen.dart';

class NewsScreens extends StatefulWidget {
  int id;
  String name;
  NewsScreens({this.id, this.name});
  @override
  _NewsScreensState createState() => _NewsScreensState();
}

class _NewsScreensState extends State<NewsScreens> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://medialoot.com/preview/atmosphere-app-backgrounds/img/iphone-1.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView(
        children: <Widget>[
          //Todo:With image
          InkWell(
          
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingScreen()));
              },
            
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        top: BorderSide(
                      color: primaryColor4Gold,
                      width: 2.0,
                    )),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            pyramidIconGoldColor,
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("PYRAMID", style: pyramidTextGoldStyle),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 10.0, bottom: 10),
                                      child: Text(
                                          "2011: a room of horror and dread n the sample code above, I load image from an URL",
                                          style: headTextStyle),
                                    ),
                                    Text(
                                      "By Writer Rumon",
                                      style: writerTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Todo:THis is card Footer Design
                      Container(
                        color: footerBackgroundColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                print("Follow me");
                              },
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.add,
                                    color: primaryColor3,
                                  ),
                                  Text(
                                    "  Follow",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            FlatButton(
                              onPressed: () {
                                print("Save me");
                              },
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.bookmark,
                                    color: primaryColor3,
                                  ),
                                  Text(
                                    "  Save",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //this is image full width fullheight
                Container(
                  child: Image.network(
                    "https://paloimages.prothom-alo.com/contents/cache/images/640x359x1/uploads/media/2019/10/08/55d73a998e8c37068c8fdbd3434f3d24-5d9c0d85125ef.jpg",
                    fit: BoxFit.cover,
                    width: size.width,
                  ),
                ),
              ],
            ),
          ),
          //todo image to
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleNewsScreen()));
            },
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        top: BorderSide(
                      color: primaryColor4Gold,
                      width: 2.0,
                    )),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //top section style
                            Row(
                              children: <Widget>[
                                pyramidIconGoldColor,
                                Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "PYRAMID",
                                      style: pyramidTextGoldStyle,
                                    ))
                              ],
                            ),
                            //title style
                            Container(
                              margin: EdgeInsets.only(top: 10, bottom: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.quoteLeft,
                                    color: primaryColor4Gold,
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Abrar’s body taken to Kushtia home n the sample code above, I load image from an URL",
                                        style: headTextStyle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //writer text
                            Padding(
                              padding: EdgeInsets.only(left: 32.0),
                              child: Text(
                                "By Writer Rumon",
                                style: writerTextStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Todo:THis is card Footer Design
                      Container(
                        color: footerBackgroundColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                print("Follow me");
                              },
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.add,
                                    color: primaryColor3,
                                  ),
                                  Text(
                                    "  Follow",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            FlatButton(
                              onPressed: () {
                                print("Save me");
                              },
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.bookmark,
                                    color: primaryColor3,
                                  ),
                                  Text(
                                    "  Save",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Image.network(
                    "https://paloimages.prothom-alo.com/contents/cache/images/640x446x1/uploads/media/2019/10/08/a1d56a68ee91f0ed8cca962e88d528d4-5d9c15d99481f.jpg",
                    fit: BoxFit.cover,
                    width: size.width,
                  ),
                ),
              ],
            ),
          ),
          //Todo:WithOut Image Container
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleNewsScreen()));
            },
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        top: BorderSide(
                      color: primaryColor4Gold,
                      width: 2.0,
                    )),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            pyramidIconGoldColor,
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("PYRAMID", style: pyramidTextGoldStyle),
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 10.0, bottom: 10),
                                      child: Text(
                                          "Trump defends decision to abandon Kurdish allies in Syria the sample code above, I load image from an URL",
                                          style: headTextStyle),
                                    ),
                                    Text(
                                      "By Writer Rumon",
                                      style: writerTextStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Todo:THis is card Footer Design
                      Container(
                        color: footerBackgroundColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                print("Follow me");
                              },
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.add,
                                    color: primaryColor3,
                                  ),
                                  Text(
                                    "  Follow",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            FlatButton(
                              onPressed: () {
                                print("Save me");
                              },
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.bookmark,
                                    color: primaryColor3,
                                  ),
                                  Text(
                                    "  Save",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //Todo:With " this
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleNewsScreen()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(
                  color: primaryColor4Gold,
                  width: 2.0,
                )),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //top section style
                        Row(
                          children: <Widget>[
                            pyramidIconGoldColor,
                            Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  "PYRAMID",
                                  style: pyramidTextGoldStyle,
                                ))
                          ],
                        ),
                        //title style
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.quoteLeft,
                                color: primaryColor4Gold,
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Buet student beaten to death: Critical FB post costs him his life the sample code above, I load image from an URL?",
                                    style: headTextStyle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //writer text
                        Padding(
                          padding: EdgeInsets.only(left: 32.0),
                          child: Text(
                            "By Writer Rumon",
                            style: writerTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Todo:THis is card Footer Design
                  Container(
                    color: footerBackgroundColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            print("Follow me");
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.add,
                                color: primaryColor3,
                              ),
                              Text(
                                "  Follow",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            print("Save me");
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.bookmark,
                                color: primaryColor3,
                              ),
                              Text(
                                "  Save",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Todo:with big footer
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleNewsScreen()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                    top: BorderSide(
                  color: primaryColor4Gold,
                  width: 2.0,
                )),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //top section style
                        Row(
                          children: <Widget>[
                            pyramidIconGoldColor,
                            Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Text(
                                  "PYRAMID",
                                  style: pyramidTextGoldStyle,
                                ))
                          ],
                        ),
                        //title style
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.quoteLeft,
                                color: primaryColor4Gold,
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "US puts Hikvision, Chinese security bureaus on economic blacklist",
                                    style: headTextStyle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //writer text
                        Padding(
                          padding:
                              EdgeInsets.only(left: 32.0, top: 10, bottom: 10),
                          child: Text(
                            "Shortcut Rumon",
                            style: writerTextStyleGold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Todo:THis is card Footer Design
                  Container(
                    color: footerBackgroundColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            print("Follow me");
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.add,
                                color: primaryColor3,
                              ),
                              Text(
                                "  Follow",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        FlatButton(
                          onPressed: () {
                            print("Save me");
                          },
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.bookmark,
                                color: primaryColor3,
                              ),
                              Text(
                                "  Save",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Todo:Without Gold style
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SingleNewsScreen()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      top: BorderSide(
                    color: primaryColor4Gold,
                    width: 2.0,
                  ))),
              child: Container(
                margin: EdgeInsets.only(left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.only(top: 15, bottom: 10),
                        child: Text(
                          "Narco, arms cases filed against Samrat the sample code above, I load image from an URL",
                          style: headTextStyle,
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 10),
                      child: Text(
                        "By Writer Rumon",
                        style: writerTextStyle,
                      ),
                    ),
                    //Todo:THis is card Footer Design
                    Container(
                      color: footerBackgroundColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {
                              print("Follow me");
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.add,
                                  color: primaryColor3,
                                ),
                                Text(
                                  "  Follow",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              print("Save me");
                            },
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.bookmark,
                                  color: primaryColor3,
                                ),
                                Text(
                                  "  Save",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
