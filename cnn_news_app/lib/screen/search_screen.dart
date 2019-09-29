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
        children: <Widget>[
          Container(
//            color: Colors.grey,
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
                  borderSide: BorderSide(color: Colors.white, width: 2.0),
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

//                         validator: (name) => name.length <4 ? 'Up to 4 Letter': null,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Text('dg');
              },
              itemCount: listOfNews.length == 0 ? 0 : listOfNews.length,
            ),
          ),
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
