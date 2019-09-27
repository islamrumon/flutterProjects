import 'package:flutter/material.dart';
import 'package:cnn_news_app/helper/helper.dart';
import 'package:cnn_news_app/helper/teb_datas.dart';

class TabViewScreen extends StatefulWidget {
  @override
  _TabViewScreenState createState() => _TabViewScreenState();
}

class _TabViewScreenState extends State<TabViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Center(
          child: Text("CNN"),
//          child: Image.network(
//              'data:image/png;base64,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',
//              fit: BoxFit.cover,
//              height: 45.0,
//            ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              "Watch TV",
              style: appbarTextStyle,
            ),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          onTap: (index) {
            setState(() {
              print(index);
            });
          },
          tabs: tablBarList,
          isScrollable: true,
          indicatorColor: primaryColor,
          indicatorWeight: 2.0,
        ),
      ),
      body:  TabBarView(
              children: tabViewPage,
            ),
    );
  }
}


