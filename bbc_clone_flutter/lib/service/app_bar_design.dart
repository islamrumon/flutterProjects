import 'package:flutter/material.dart';
import '../class/app_bar_icon.dart';
import 'drawer_list.dart';
import '../class/drawer_menu_list.dart';
import '../class/search_bar.dart';
import '../class/tab_menu_list.dart';
import '../helpers/helper.dart';

class AppBarDesign extends StatefulWidget {
  @override
  _AppBarDesignState createState() => _AppBarDesignState();
}

class _AppBarDesignState extends State<AppBarDesign> {
  void _select(String route) {
    setState(() {
      print(route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabMenuList.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.asset(
                'assets/bbc-news-icon-80x80.png',
                fit: BoxFit.cover,
                height: 45.0,
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                _select(choices[0].title);
              },
              icon: IconButton(
                icon: Icon(Icons.search),
                color: iconColor,
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                },
              ),
            ),
            PopupMenuButton<AppBarIcon>(itemBuilder: (BuildContext context) {
              return choices.skip(1).map((AppBarIcon choice) {
                return PopupMenuItem<AppBarIcon>(
                  value: choice,
                  child: FlatButton(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        choice.title,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    onPressed: () {
                      //todo:there are popupmenu section
                      _select(choice.title);
                    },
                  ),
                );
              }).toList();
            })
          ],
          bottom: TabBar(
            onTap: (index) {
              _select(index.toString());
            },
            isScrollable: true,
            indicatorColor: indicatorColor,
            indicatorWeight: 2.0,
            tabs: tabMenuList,
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: drawerBackgroundColors,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return DrawerList(listOfTiles[index]);
              },
              itemCount: listOfTiles.length,
            ),
          ),
        ),
        body: TabBarView(children: tabViewPages),
      ),
    );
  }
}