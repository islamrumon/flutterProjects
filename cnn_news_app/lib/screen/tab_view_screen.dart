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

        title:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Text('CNN'),
            ]
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
      ),
      body: Column(
        children: <Widget>[
          Card(
            color: Colors.white,
            child: TabBar(
              labelColor: Colors.white,
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
          //tabbarview
          Expanded(
            child: Container(
              child: TabBarView(
                children: tabViewPage,
              ),
            ),
          ),
        ],
      )

    );
  }
}


