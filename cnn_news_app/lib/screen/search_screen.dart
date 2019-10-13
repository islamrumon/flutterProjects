import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cnn_news_app/helper/news.dart';
import 'single_news_screen.dart';
import 'package:cnn_news_app/helper/helper.dart';
import 'package:cnn_news_app/widget/grid_view.dart';

class SearchScrenn extends StatefulWidget {
  @override
  _SearchScrennState createState() => _SearchScrennState();
}

class _SearchScrennState extends State<SearchScrenn> {
  List news = listOfNews;
  List filerResult = [];
  int i = 0;

  final deactiveText = TextStyle(color: Colors.black);
  final activeText = TextStyle(color: Colors.white);
  final deactiveButton = Colors.white;
  final activeButton = Colors.black;

  searchNews(str) {
    var exist = str.length > 0 ? true : false;
    if (exist) {
      for (i; i < news.length; i++) {
        String name = news[i]['title'].toUppercase();
        if (name.contains(str.toUppercase())) {
          filerResult.add(news[i]);
        }
//todo:there are have some uppercase or lowercase problem solve you that
        setState(() {
          news = filerResult;
        });
      }
    } else {
      news = null;
    }
  }

  @override
  Widget build(BuildContext context) {
//    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Center(
          child: Text("Search News"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
              cursorColor: primaryColor,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                suffixIcon: FlatButton(
                  onPressed: () {},
                  child: Text("Clear"),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 1.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: primaryColor, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: primaryColor, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: primaryColor,
                ),
              ),
              onChanged: (str) {
                setState(() {
                  searchNews(str);
                  print(str);
                });
                print(str);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text("123456 results",),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: (){},
                  child: Text("All",style: activeText,),
                  color: activeButton,
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                    side: BorderSide(color: Colors.black,width: 2),
                  ),
                ),
                RaisedButton(
                  onPressed: (){},
                  color: deactiveButton,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black,width: 2),
                  ),
                  child: Text("Politics",style: deactiveText,),
                ),
                RaisedButton(
                  onPressed: (){},
                  color: deactiveButton,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black,width: 2),
                  ),
                  child: Text("Social",style: deactiveText,),
                ),
                RaisedButton(
                  onPressed: (){},
                  child: Text("Galaryis",style: deactiveText,),
                  color: deactiveButton,
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                    side: BorderSide(color: Colors.black,width: 2),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Card(
                      child: InkWell(
                        onTap: (){},
                        child: Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("The White House is frenetically throwing up road blocks in a belated strategy to slow the Democratic impeachment machine",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                      Padding(
                                        padding:EdgeInsets.only(top:8.0,bottom: 8.0),
                                        child: Text("Share on Sep 20,2090",style: TextStyle(fontSize: 11),),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.camera),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        onTap: (){},
                        child: Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("The White House is frenetically throwing up road blocks in a belated strategy to slow the Democratic impeachment machine",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                      Padding(
                                        padding:EdgeInsets.only(top:8.0,bottom: 8.0),
                                        child: Text("Share on Sep 20,2090",style: TextStyle(fontSize: 11),),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.camera),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        onTap: (){},
                        child: Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("The White House is frenetically throwing up road blocks in a belated strategy to slow the Democratic impeachment machine",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                      Padding(
                                        padding:EdgeInsets.only(top:8.0,bottom: 8.0),
                                        child: Text("Share on Sep 20,2090",style: TextStyle(fontSize: 11),),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.camera),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        onTap: (){},
                        child: Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("The White House is frenetically throwing up road blocks in a belated strategy to slow the Democratic impeachment machine",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                      Padding(
                                        padding:EdgeInsets.only(top:8.0,bottom: 8.0),
                                        child: Text("Share on Sep 20,2090",style: TextStyle(fontSize: 11),),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.camera),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        onTap: (){},
                        child: Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("The White House is frenetically throwing up road blocks in a belated strategy to slow the Democratic impeachment machine",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                      Padding(
                                        padding:EdgeInsets.only(top:8.0,bottom: 8.0),
                                        child: Text("Share on Sep 20,2090",style: TextStyle(fontSize: 11),),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.camera),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        onTap: (){},
                        child: Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("The White House is frenetically throwing up road blocks in a belated strategy to slow the Democratic impeachment machine",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                      Padding(
                                        padding:EdgeInsets.only(top:8.0,bottom: 8.0),
                                        child: Text("Share on Sep 20,2090",style: TextStyle(fontSize: 11),),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.camera),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        onTap: (){},
                        child: Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("The White House is frenetically throwing up road blocks in a belated strategy to slow the Democratic impeachment machine",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                      Padding(
                                        padding:EdgeInsets.only(top:8.0,bottom: 8.0),
                                        child: Text("Share on Sep 20,2090",style: TextStyle(fontSize: 11),),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.camera),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        onTap: (){},
                        child: Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("The White House is frenetically throwing up road blocks in a belated strategy to slow the Democratic impeachment machine",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                      Padding(
                                        padding:EdgeInsets.only(top:8.0,bottom: 8.0),
                                        child: Text("Share on Sep 20,2090",style: TextStyle(fontSize: 11),),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.camera),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        onTap: (){},
                        child: Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("The White House is frenetically throwing up road blocks in a belated strategy to slow the Democratic impeachment machine",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                      Padding(
                                        padding:EdgeInsets.only(top:8.0,bottom: 8.0),
                                        child: Text("Share on Sep 20,2090",style: TextStyle(fontSize: 11),),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.camera),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: InkWell(
                        onTap: (){},
                        child: Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("The White House is frenetically throwing up road blocks in a belated strategy to slow the Democratic impeachment machine",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                                      Padding(
                                        padding:EdgeInsets.only(top:8.0,bottom: 8.0),
                                        child: Text("Share on Sep 20,2090",style: TextStyle(fontSize: 11),),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.camera),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

//todo:this is for list view
//          Expanded(
//            child: ListView.builder(
//              itemBuilder: (BuildContext context, int index) {
//                return Text('dg');
//              },
//              itemCount: listOfNews.length == 0 ? 0 : listOfNews.length,
//            ),
//          ),
        ],
      ),
    );
  }
}

//          ListView.builder(
//            itemBuilder: (BuildContext context, int index) {
//              return GridNews(
//                title: news[index]['title'],
//                time: news[index]['time'],
//                image: news[index]['image'],
//                detials:news[index]['detials'],
//                location: news[index]['location'],
//              );
//            },
//            itemCount: news.length,
//          ),
