import 'package:flutter/material.dart';
import 'package:cnn_news_app/helper/news.dart';

class SearchScrenn extends StatefulWidget {
  @override
  _SearchScrennState createState() => _SearchScrennState();
}

class _SearchScrennState extends State<SearchScrenn> {
 List news = listOfNews;
 List filerResult = [];
 int i=0;

searchNews( str ){
 var exist = str.length >0 ?true:false;
 if(exist){
 for(i; i< news.length ;i++){
   if(news[i]['title'].contains(str)){
     filerResult.add(news[i]);
   }
 }
 }else{
   news = null;
 }
}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          TextField(
            onChanged: (String str){
              setState(() {
             searchNews(str);
              });
            },
          ),
          ListView.builder(
            itemBuilder: ,
            itemCount: filerResult.length == 0 ? filerResult.length:0,
          ),
        ],
      ),
    );
  }
}
