import 'package:cnn_news_app/helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:cnn_news_app/helper/teb_datas.dart';
import 'package:cnn_news_app/helper/helper.dart';
import 'package:cnn_news_app/helper/navigation_bar.dart';

class AppBarCustom extends StatefulWidget {
  @override
  _AppBarCustomState createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  int selectpage = 0;
  var dactive = Colors.black12;
  var active = primaryColor;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: tablBarList.length,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectpage,
          onTap: (int index) {
            setState(() {
              selectpage = index;
              print(index);
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: dactive,
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: primaryColor,
                  size: 30,
                ),
                title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: dactive,
                ),
                activeIcon: Icon(
                  Icons.search,
                  color: primaryColor,
                  size: 30,
                ),
                title: Text("search")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark_border,
                  color: dactive,
                ),
                activeIcon: Icon(
                  Icons.bookmark_border,
                  color: primaryColor,
                  size: 30,
                ),
                title: Text("Bookmark")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: dactive,
                ),
                activeIcon: Icon(
                  Icons.settings,
                  color: primaryColor,
                  size: 30,
                ),
                title: Text('settings')),
          ],
        ),
        body: pageSource[selectpage],
      ),
    );
  }
}
